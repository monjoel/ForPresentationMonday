module.exports = function(app,db,name,counts,chart,whoCurrentlyAdmitted,whoOPD,whoWARD,monthlyPatientCount,patientList,bcrypt,io,moment){
var user, Aid;

  app.get('/laboratorist/dashboard', function(req, res){
    if(req.session.email && req.session.sino == 'laboratorist'){
      if(req.session.sino == 'laboratorist'){
        Aid = req.session.Aid;
        var diagnosisSQL      = 'SELECT * from lab_request where lab_status="pending";';
        var bloodChemistrySQL = 'SELECT * from lab_counter l inner join patient using(patient_id) where l.type = "Blood Chemistry";';
        var hermatology       = 'SELECT * from lab_counter l inner join patient using(patient_id) where l.type = "Hematology";';
        var microscopy        = 'SELECT * from lab_counter l inner join patient using(patient_id) where l.type = "Microscopy";';
        var parasitology      = 'SELECT * from lab_counter l inner join patient using(patient_id) where l.type = "Parasitology";';
        var serology          = 'SELECT * from lab_counter l inner join patient using(patient_id) where l.type = "Serotology";';
        var microbiology      = 'SELECT * from lab_counter l inner join patient using(patient_id) where l.type = "Microbiology";';
        var xRay              = 'SELECT * from lab_counter l inner join patient using(patient_id) where l.type = "X-Ray";';
        var todoList          = "SELECT * from todo_list where account_id = "+Aid+";";
        var requestStatusSQL = 'select * from patient_history inner join patient using(patient_id) where request = "pending";';

        db.query(todoList + diagnosisSQL + bloodChemistrySQL + hermatology + microscopy + parasitology + serology + microbiology + xRay + monthlyPatientCount + name + requestStatusSQL, Aid, function(err, rows){
          if (err) {
            console.log(err);
          } else {
            user = rows[10];
            res.render('laboratorist/dashboard', {todoList:rows[0],diagnosisSQL:rows[1],bloodChemistrySQL:rows[2],hermatology:rows[3],microscopy:rows[4],parasitology:rows[5],
                                                  serology:rows[6],microbiology:rows[7],xRay:rows[8],monthlyPatientCount:rows[9], requestStatus:rows[11], username: user});
          }
        });
      } else {
        res.redirect(req.session.sino+'/dashboard');
      }
    } else {
        res.redirect('../login');
    }
  });

  app.post('/laboratorist/dashboard', function(req, res){
    var data = req.body;
    if (req.session.email && req.session.sino == 'laboratorist') {
      if (req.session.sino == 'laboratorist') {
        if(data.sub == 'addTodo') {
          var splitDateNTime = data.dateNtime.split('T');
          var parseDate      = splitDateNTime[0];
          var parseTime      = splitDateNTime[1] + ':00';
          var parseDateNTime = parseDate+' '+parseTime;
          var todoLog = '';
          if (data.todoStatus == 'urgent') {
            todoLog = 'INSERT into activity_logs(account_id, time, type, remarks) VALUES ('+req.session.Aid+',"'+moment(new Date()).format('YYYY-MM-DD HH:mm:ss')+'", "urgentTodo", "Added to do urgent: '+data.description+'");';
          } else if(data.todoStatus == 'general') {
            todoLog = 'INSERT into activity_logs(account_id, time, type, remarks) VALUES ('+req.session.Aid+',"'+moment(new Date()).format('YYYY-MM-DD HH:mm:ss')+'", "generalTodo", "Added to do general: '+data.description+'");';
          }
          var addTodo  = 'INSERT into todo_list (description, status,date, account_id) VALUES("'+data.description+'","'+data.todoStatus+'","'+parseDateNTime+'",'+req.session.Aid+');';
          db.query(addTodo + todoLog, function(err){
            if (err) {
              console.log(err);
            }
          });
          res.redirect(req.get('referer'));
        } else if (data.sub == 'delToDo') {
          var delTodo = 'DELETE FROM todo_list where todo_id = '+req.query.tId+';';
          db.query(delTodo + 'INSERT into activity_logs(account_id, time, type, remarks) VALUES ('+req.session.Aid+',"'+moment(new Date()).format('YYYY-MM-DD HH:mm:ss')+'", "delTodo", "Deleted data from todo List");', function(err){
            if (err) {
              console.log(err);
            }
          });
          res.redirect(req.get('referer'));
        } else if(data.sub == 'confirm') {
            db.query('UPDATE patient_history set lab_confirm = "confirmed" where histo_id ='+req.query.histoId+';' + 'INSERT into activity_logs(account_id, time, type, remarks) VALUES ('+req.session.Aid+',"'+moment(new Date()).format('YYYY-MM-DD HH:mm:ss')+'", "confirmedLab", "Confirmed lab discharge Request for patient '+req.query.pName+'");', function(err){
              if (err) {
                console.log(err);
              }
            });
            res.redirect(req.get('referer'));
        }

  } else {
    res.redirect(req.session.sino + '/dashboard');
  }
} else {
res.redirect('../login');
    }
  });

  //LAB REQUEST
  app.get('/laboratorist/labRequestManagement', function(req, res){
    if(req.session.email && req.session.sino == 'laboratorist'){
      if(req.session.sino == 'laboratorist'){
          var pendingLabRequestSQL = 'SELECT * from lab_request l inner join patient using(patient_id) where lab_status = "pending" ORDER BY timestamp desc;';
          var confirmedLabRequestSQL = 'SELECT * from lab_request l inner join patient using(patient_id) where lab_status = "confirmed" ORDER BY timestamp desc;';

          db.query(pendingLabRequestSQL + confirmedLabRequestSQL, function(err, rows){
            if (err) {
              console.log(err);
            } else {
              res.render('laboratorist/labRequestManagement', {pendingLabRequestSQL:rows[0],confirmedLabRequestSQL:rows[1], username: user});
            }
          });
      } else {
        res.redirect(req.session.sino+'/dashboard');
      }
    } else {
        res.redirect('../login');
    }
  });
  app.post('/laboratorist/labRequestManagement', function(req, res){
    var data = req.body;
    if(req.session.email && req.session.sino == 'laboratorist'){
      if(req.session.sino == 'laboratorist') {
        if (data.sub == 'confirm') {
          var confirmLabRequestSQL = 'UPDATE lab_request SET lab_status="confirmed" where request_id = '+req.query.requestId+';';
          db.query(confirmLabRequestSQL + 'INSERT into activity_logs(account_id, time, type, remarks) VALUES ('+Aid+',"'+moment(new Date()).format('YYYY-MM-DD HH:mm:ss')+'", "confirmedLabRequest", "Confirmed lab request for: '+req.query.labrequestPatientName+'");', function(err){
            if(err){
              console.log(err);
            } else {
              io.emit('type', {what:'confirmedLabRequest',message:'Confirmed Lab Request for <strong>'+req.query.labrequestPatientName+'</strong>'});
              res.redirect(req.get('referer'));
            }
          });
        } else {
          var cancelLabRequestSQL = 'DELETE FROM lab_request where request_id = '+req.query.requestId+';';
          db.query(cancelLabRequestSQL + 'INSERT into activity_logs(account_id, time, type, remarks) VALUES ('+Aid+',"'+moment(new Date()).format('YYYY-MM-DD HH:mm:ss')+'", "cancelLabRequest", "Canceled lab request for: '+req.query.labrequestPatientName+'");', function(err){
            if(err){
              console.log(err);
            } else {
              io.emit('type', {what:'cancelLabRequest',message:'Canceled Lab Request for <strong>'+req.query.labrequestPatientName+'</strong>'});
              res.redirect(req.get('referer'));
            }
          });
        }
      } else {
        res.redirect(req.session.sino+'/dashboard');
      }
    } else {
      res.redirect('../login');
    }
  });

  //PATIENT MANAGEMENT
app.get('/laboratorist/patientManagement', function(req, res){
    if(req.session.email && req.session.sino == 'laboratorist'){
      if(req.session.sino == 'laboratorist'){
        var sql  = "SELECT patient_id,patient_type,name,age,sex,blood_type FROM patient";
        db.query(sql, function(err, rows){
          res.render('laboratorist/patientManagement', {p:rows, username:user});
        });
      } else {
        res.redirect(req.session.sino+'/dashboard');
      }
    } else {
        res.redirect('../login');
    }
  });

  // PROFILE MANAGEMENT
    app.get('/laboratorist/profileManagement', function(req, res){
      if(req.session.email && req.session.sino == 'laboratorist'){
        if (req.session.sino == 'laboratorist') {
          var profileInfoSQL  = 'SELECT name, age, account_id, sex, address, phone from user_accounts where account_id = '+req.session.Aid+';';
          var activityLogsSQL = 'SELECT * from activity_logs where account_id = '+req.session.Aid+' ORDER by logs_id desc LIMIT 10;';
          db.query(profileInfoSQL + activityLogsSQL, function(err, rows){
            if (err) {
              console.log(err);
            } else {
              res.render('laboratorist/profileManagement', {pInfo:rows[0], activityInfo: rows[1], username: user});
            }
          });
        } else {
          res.redirect(req.session.sino+'/dashboard');
        }
      } else {
        res.redirect('../login')
      }
    });

    app.post('/laboratorist/profileManagement', function(req, res){
      var data = req.body;
      if (req.session.email && req.session.sino == 'laboratorist') {
        if (req.session.sino == 'laboratorist') {
          bcrypt.compare(data.oldPass, req.session.password, function(err, isMatch){
            if(isMatch) {
              req.flash('success', 'Successfully changed profile!');
              bcrypt.genSalt(10, function(err, salt){
                bcrypt.hash(data.newPass, salt, function(err, hash){
                  if (data.newPass) {
                    var updateProfileSQL = 'UPDATE user_accounts SET name = "'+data.name+'", address = "'+data.address+'", phone = '+data.phone+', password = "'+hash+'" WHERE account_id = '+req.session.Aid+';';
                    db.query(updateProfileSQL + 'INSERT into activity_logs(account_id, time, type, remarks) VALUES ('+Aid+',"'+moment(new Date()).format('YYYY-MM-DD HH:mm:ss')+'", "settingsProfileManagement", "Edited personal info.");', function(err, rows){
                      if (err) {
                        console.log(err);
                      } else {
                          res.redirect('../logout');
                      }
                    });
                  } else {
                    var updateProfileSQL = 'UPDATE user_accounts SET name = "'+data.name+'", address = "'+data.address+'", phone = '+data.phone+' WHERE account_id = '+req.session.Aid+';';
                    db.query(updateProfileSQL + 'INSERT into activity_logs(account_id, time, type, remarks) VALUES ('+Aid+',"'+moment(new Date()).format('YYYY-MM-DD HH:mm:ss')+'", "settingsProfileManagement", "Edited personal info.");', function(err, rows){
                      if (err) {
                        console.log(err);
                      } else {
                          res.redirect(req.get('referer'));
                      }
                    });
                  }
                });
              });
            } else {
              req.flash('danger', 'Invalid Current Password!');
              res.redirect(req.get('referer'));
            }
          });

        } else {
          res.redirect(req.session.sino+'/dashboard');
        }
      } else {
        res.redirect('../login');
      }
    });

  //PATIENT MANAGEMENT
  app.get('/laboratorist/patientManagement', function(req, res){
      if(req.session.email && req.session.sino == 'laboratorist'){
        if(req.session.sino == 'laboratorist'){
          var sql  = "SELECT patient_id,patient_type,name,age,sex,blood_type FROM patient";
          db.query(sql, function(err, rows){
            res.render('laboratorist/patientManagement', {p:rows, username:user});
          });
        } else {
          res.redirect(req.session.sino+'/dashboard');
        }
      } else {
          res.redirect('../login');
      }
    });


}
