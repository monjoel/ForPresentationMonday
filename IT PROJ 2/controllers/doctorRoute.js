module.exports = function(app,db,name,counts,chart,whoCurrentlyAdmitted,whoOPD,whoWARD,monthlyPatientCount,patientList,availableBeds,patientManagementSQL,bcrypt,io,moment){
var availableBedss, p;

  app.get('/doctor/dashboard', function(req, res){
    if(req.session.email && req.session.sino == 'doctor'){
      if(req.session.sino == 'doctor'){
        var todoList    = "SELECT * from todo_list where account_id = "+req.session.Aid+";";
        db.query(name + counts + chart + whoCurrentlyAdmitted + whoOPD + whoWARD + patientList + availableBeds + monthlyPatientCount + todoList, req.session.Aid, function(err, rows, fields){
          if (err) {
            console.log(err);
          }
          availableBedss = rows[7];
          res.render('doctor/dashboard', {counts:rows[1], chart:rows[2], whoCurrentlyAdmitted:rows[3], whoOPD:rows[4], whoWARD:rows[5], patientList:rows[6],
                                         availableBeds:rows[7], monthlyPatientCount:rows[8], todoList:rows[9], username: rows[0]});
       });
      } else {
        res.redirect(req.session.sino + '/dashboard');
      }
    } else {
      res.redirect('../login');
    }
  });

  app.post('/doctor/dashboard', function(req, res){
    var data = req.body;
    if(req.session.email && req.session.sino == 'doctor'){
        if (req.session.sino == 'doctor') {
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

          } else if(data.sub == 'appointment') {
                var splitDateNTime = data.dateNtime.split('T');
                var parseDate      = splitDateNTime[0];
                var parseTime      = splitDateNTime[1] + ':00';
                var parseDateNTime = parseDate+' '+parseTime;
                var pName          = data.appointmentPatientID.split(',');
                var addAppointment = 'INSERT into appointment (doctor_id, patient_id, appointment_timestamp, remarks) VALUES ('+req.session.Aid+', '+pName[0]+', "'+parseDateNTime+'", "'+data.appointmentRemarks+'");';
                db.query(addAppointment + 'INSERT into activity_logs(account_id, time, type, remarks) VALUES ('+req.session.Aid+',"'+moment(new Date()).format('YYYY-MM-DD HH:mm:ss')+'", "appointment", "Set Appointment with '+pName[1]+' on '+parseDateNTime+'");', function(err){
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
//OUTPATIENT
  app.get('/doctor/outpatientManagement', function(req, res){
    if(req.session.email && req.session.sino == 'doctor'){
      if (req.session.sino == 'doctor') {
          var outpatientDepartmentSQL = 'SELECT * from patient_history inner join patient using(patient_id) where patient_history.status = "pending" and doctor_id = '+req.session.Aid+' and bed is null;';
          var outpatientDepartmentSQL2 = 'SELECT * from patient_history inner join patient using(patient_id) where patient_history.status = "confirmed" and doctor_id = '+req.session.Aid+';';
          var outpatientDepartmentSQL3 = 'SELECT * from patient_history inner join patient using(patient_id) left join bed using(patient_id) where patient_history.status = "pending" and bed is not null and doctor_id = '+req.session.Aid+' group by patient_id;';
          var labSQL                  = 'SELECT * from lab_request left join patient_history using(patient_id)  where lab_status = "pending" group by patient_id;';
          var prescribeSQL            = 'SELECT * from prescription p inner join patient using(patient_id) where p.status = "pending" group by patient_id;';

          db.query(outpatientDepartmentSQL + availableBeds + labSQL + prescribeSQL + outpatientDepartmentSQL2 + outpatientDepartmentSQL3 + name,req.session.Aid, function(err, rows){
          if (err) {
            console.log(err);
          } else {
              res.render('doctor/outpatientManagement', {opdInfo:rows[0], admitAvailableBeds:rows[1], labSQL:rows[2], prescribeSQL:rows[3], opdInfo1:rows[4], opdInfo2:rows[5], username: rows[6], invalid:null});
          }
        });
      } else {
        res.redirect(req.session.sino+'/dashboard');
      }
    } else {
      res.redirect('../login')
    }
  });
  app.post('/doctor/outpatientManagement', function(req, res){
    var data = req.body;
    if(req.session.email && req.session.sino == 'doctor'){
      if (req.session.sino == 'doctor') {
          if (data.sub == 'admit') {
            var bedSQL     = 'UPDATE bed set allotment_timestamp = "'+moment(new Date()).format('YYYY-MM-DD HH:mm:ss')+'", patient_id = '+req.query.patient_id+',status = "occupied" where bed_id = '+data.bedNumber+';';
            var historySQL = 'UPDATE patient_history set bed = CONCAT(IFNULL(bed, ""),"'+data.bedNumber+', ") where histo_id ='+req.query.histo_id+';';
            var wardCount  = 'INSERT into ward_count (date_stamp, patient_id) values("'+moment(new Date()).format('YYYY-MM-DD HH:mm:ss')+'",'+req.query.patient_id+');';
            db.query(bedSQL + historySQL + wardCount + 'INSERT into activity_logs(account_id, time, type, remarks, patient_id) VALUES ('+req.session.Aid+',"'+moment(new Date()).format('YYYY-MM-DD HH:mm:ss')+'", "bed", "Alloted bed number: '+data.bedNumber+' to patient:'+req.query.patient_name+'",'+req.query.patient_id+');', function(err){
              if (err) {
                console.log(err);
              } else {
                res.redirect(req.get('referer'));
              }
            });
          } else if(data.sub == 'prescribe') {
            var prescribeSQL = 'INSERT into prescription (creation_stamp, medicine, quantity, dosage, timeframe, doctor_id, patient_id, status) VALUES ("'+moment(new Date()).format('YYYY-MM-DD HH:mm:ss')+'","'+data.medicine+'","'+data.quantity+'","'+data.dosage+'","'+data.timeframe+'",'+req.session.Aid+','+req.query.patient_id+',"pending");';
            var medicines    = data.medicine + ","+ data.quantity + "," + data.dosage + "," + data.timeframe;
            var historySQL = 'UPDATE patient_history set medicine = CONCAT(IFNULL(medicine, ""),"'+medicines+'\n") where histo_id ='+req.query.histo_id+';';
            db.query(prescribeSQL + historySQL +  'INSERT into activity_logs(account_id, time, type, remarks) VALUES ('+req.session.Aid+',"'+moment(new Date()).format('YYYY-MM-DD HH:mm:ss')+'", "prescription", "Prescribed a medicine to : '+req.query.patient_name+'");', function(err){
              if (err) {
                console.log(err);
              } else {
                io.emit('type', {what:'prescribe',message:'Received Prescription for '+req.query.patient_name+', sent by Dr. <strong>'+req.session.name+'</strong>'});
                res.redirect(req.get('referer'));
              }
            });
          } else if (data.sub == 'labRequest') {
            var requestSQL = 'INSERT into lab_request(type,timestamp,remarks,doctor_id,patient_id,lab_status) VALUES("'+data.testRequest+'","'+moment(new Date()).format('YYYY-MM-DD HH:mm:ss')+'","'+data.labRequestremarks+'",'+req.session.Aid+','+req.query.patient_id+',"pending");';
            var lab = "Type: " + data.testRequest + "\n Remarks: " + data.labRequestremarks;
            var historySQL = 'UPDATE patient_history set lab = CONCAT(IFNULL(lab, ""),"'+lab+'\n") where histo_id = '+req.query.histo_id+';';
            var labRequestCounter    = 'INSERT into lab_counter(timestamp, patient_id, type, name) values("'+moment(new Date()).format('YYYY-MM-DD HH:mm:ss')+'",'+req.query.patient_id+',"'+data.testRequest+'","'+req.query.patient_name+'");';
            db.query(requestSQL + historySQL + labRequestCounter + 'INSERT into activity_logs(account_id, time, type, remarks) VALUES ('+req.session.Aid+',"'+moment(new Date()).format('YYYY-MM-DD HH:mm:ss')+'", "labRequest", "Lab request for : '+req.query.patient_name+'");', function(err){
              if (err) {
                console.log(err);
              } else {
                io.emit('type', {what:'lab',message:'Received Lab Request for '+req.query.patient_name+', sent by Dr. <strong>'+req.session.name+'</strong>'});
                res.redirect(req.get('referer'));
              }
            });
          } else if (data.sub == 'diag') {
            var diagnosisSQL = 'INSERT into diagnosis (diagnosis, date, patient_id, doctor_id) VALUES ("'+data.diagnosis+'","'+moment(new Date()).format('YYYY-MM-DD HH:mm:ss')+'",'+req.query.patient_id+','+req.session.Aid+');';
            var historySQL = 'UPDATE patient_history set diagnosis = CONCAT(IFNULL(diagnosis, ""),"'+data.diagnosis+'\n") where histo_id = '+req.query.histo_id+';';
            db.query(diagnosisSQL + historySQL + 'INSERT into activity_logs(account_id, time, type, remarks) VALUES ('+req.session.Aid+',"'+moment(new Date()).format('YYYY-MM-DD HH:mm:ss')+'", "diagnosis", "diagnosis for : '+req.query.patient_name+'");', function(err){
              if (err) {
                console.log(err);
              } else {
                res.redirect(req.get('referer'));
              }
            });
          } else if (data.sub == 'confirm') {
            db.query('UPDATE patient_history inner join bed on patient_history.patient_id = bed.patient_id set patient_history.status = "confirmed", bed.status = "Unoccupied", bed.allotment_timestamp = NULL, bed.patient_id = NULL where patient_history.histo_id = '+req.query.id+';'
              + 'INSERT into activity_logs(account_id, time, type, remarks, patient_id) VALUES ('+req.session.Aid+',"'+moment(new Date()).format('YYYY-MM-DD HH:mm:ss')+'", "bedDischarge", "Discharged a patient from bed number : '+req.query.bed+'",'+req.query.pId+');'+'INSERT into activity_logs(account_id, time, type, remarks, patient_id) VALUES ('+req.session.Aid+',"'+moment(new Date()).format('YYYY-MM-DD HH:mm:ss')+'", "confirmER", "Confirmed patient on WARD/ER, named: '+req.query.name+'!",'+req.query.pId+');', function(err){
              if (err) {
                console.log(err);
              } else {
                res.redirect(req.get('referer'));
              }
            });
          } else if (data.sub == 'confirmOPD') {
            db.query('UPDATE patient_history set status = "confirmed" where histo_id = '+req.query.id+';'
              + 'INSERT into activity_logs(account_id, time, type, remarks, patient_id) VALUES ('+req.session.Aid+',"'+moment(new Date()).format('YYYY-MM-DD HH:mm:ss')+'", "confirmOPD", "Confirmed patient on OPD, named: '+req.query.name+' !", '+req.query.id+');', function(err){
              if (err) {
                console.log(err);
              } else {
                res.redirect(req.get('referer'));
              }
            });
          } else if (data.sub == 'clear'){
            db.query('UPDATE patient_history set diagnosis = NULL where histo_id = '+req.query.histo_id+';', function(err){
              if (err) {
                console.log(err);
              } else {
                res.redirect(req.get('referer'));
              }
            });
          } else {
            bcrypt.compare(data.patientPassword, req.session.password, function(err, isMatch){
              if(isMatch) {
                var sql  = "SELECT patient_id,patient_type,name,age,sex,blood_type FROM patient where patient_id = "+req.query.passPatient+";";
                var sql2  = "SELECT * FROM patient where patient_id = "+req.query.passPatient+";";
                var med = "select date_stamp, lab, medicine,diagnosis,bed from patient_history where patient_id = "+req.query.passPatient+" and status = 'confirmed' order by date_stamp desc;";
                db.query(sql + sql2 + med + name, function(err, successRows){
                  res.render('doctor/patientManagement', {p:successRows[0], p2:successRows[1], med:successRows[2], username:successRows[3], invalid:null});
                });
              } else {
                var sql  = "SELECT patient_id,patient_type,name,age,sex,blood_type FROM patient where patient_id = "+req.query.passPatient+";";
                db.query(sql + name,req.session.Aid, function(err, errorRows){
                  res.render('doctor/patientManagement', {p:errorRows[0], p2:null, med:null, username:errorRows[1], invalid:'error'});
                });
              }
            });
        }

      } else {
        res.redirect(req.session.sino+'/dashboard');
      }
    } else {
      res.redirect('../login')
    }
  });
  //BED MANAGEMENT
  app.get('/doctor/bedManagement', function(req, res){
    if (req.session.email && req.session.sino == 'doctor') {
      if (req.session.sino == 'doctor') {
        if (req.query.bed_id) {
          var bedSQL = "SELECT p.patient_id, b.bed_id, p.patient_type, p.name, b.status, b.allotment_timestamp from bed b LEFT JOIN patient p USING(patient_id) where bed_id = "+req.query.bed_id+"; ";
          db.query(bedSQL + name,req.session.Aid, function(err, rows, fields){
            res.render('doctor/bedManagement', {bedDetails:rows[0], username: rows[1]});
          });
        } else {
          var bedSQL = "SELECT p.patient_id, b.bed_id, p.patient_type, p.name, b.status, b.allotment_timestamp from bed b LEFT JOIN patient p USING(patient_id); ";
          db.query(bedSQL + name,req.session.Aid, function(err, rows, fields){
            res.render('doctor/bedManagement', {bedDetails:rows[0], username: rows[1]});
          });
        }
      } else {
        res.redirect(req.session.sino+'/dashboard');
      }
    } else {
      res.redirect('../login');
    }
  });
  app.post('/doctor/bedManagement', function(req, res){
    if(req.session.email && req.session.sino == 'doctor'){
      if(req.session.sino == 'doctor') {
        var dischargeSQL = "UPDATE bed SET status = 'Unoccupied', allotment_timestamp = NULL, patient_id = NULL where bed_id = "+req.query.bed+";";
        db.query(dischargeSQL + 'INSERT into activity_logs(account_id, time, type, remarks, patient_id) VALUES ('+req.session.Aid+',"'+moment(new Date()).format('YYYY-MM-DD HH:mm:ss')+'", "bedDischarge", "Discharged a patient from bed number : '+req.query.bed+'", '+req.query.id+');', function(err, rows, fields){
          if(err){
            console.log(err);
          } else {
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
  app.get('/doctor/patientManagement', function(req, res){
      if(req.session.email && req.session.sino == 'doctor'){
        if(req.session.sino == 'doctor'){
          if(req.query.patient){
            var sql="SELECT *,"
                    +" (SELECT time from activity_logs where type='bed' and patient.patient_id = activity_logs.patient_id order by time desc limit 1) as allotment, "
                    +" (SELECT time from activity_logs where type='bedDischarge' and patient.patient_id = activity_logs.patient_id order by time desc limit 1) as discharge, "
                    +" (SELECT DATEDIFF(discharge,allotment)) as difference "
                    +" FROM patient inner join activity_logs USING(patient_id) where patient_id = "+req.query.patient+" group by patient_id;";
            db.query(sql + name,req.session.Aid, function(err, rows){
              res.render('doctor/patientManagement', {p:rows[0], p2:null, med:null, username:rows[1], invalid:null});
            });
          } else {
              db.query(patientManagementSQL + name,req.session.Aid, function(err, rows){
                res.render('doctor/patientManagement', {p:rows[0], p2:null, med:null, username:rows[1], invalid:null});
              });
          }
        } else {
          res.redirect(req.session.sino+'/dashboard');
        }
      } else {
          res.redirect('../login');
      }
    });

    app.post('/doctor/patientManagement', function(req, res){
      var data = req.body;
      if(req.session.email && req.session.sino == 'doctor'){
        if(req.session.sino == 'doctor') {
          if (data.sub == 'changeInfo') {
            var patientManSQL = "SELECT *,"
                               +" (SELECT time from activity_logs where type='bed' and patient.patient_id = activity_logs.patient_id order by time desc limit 1) as allotment, "
                               +" (SELECT time from activity_logs where type='bedDischarge' and patient.patient_id = activity_logs.patient_id order by time desc limit 1) as discharge, "
                               +" (SELECT DATEDIFF(discharge,allotment)) as difference "
                               +" FROM patient inner join activity_logs USING(patient_id) where patient_id = "+req.query.patient_id+" group by patient_id;";

            var sql2  = "SELECT * FROM patient where patient_id = "+req.query.patient_id+";";
            var med = "select date_stamp, lab, medicine,diagnosis,bed, initial_assessment from patient_history where patient_id = "+req.query.patient_id+" and status = 'confirmed' order by date_stamp desc;";
            var patientInfoUpdate = 'UPDATE patient SET patient_type = IFNULL("'+data.patientType+'", patient_type), name = IFNULL("'+data.name+'", name), unit = IFNULL("'+data.unit+'", unit), status = IFNULL("'+data.status+'", status), address = IFNULL("'+data.address+'", address), religion = IFNULL("'+data.religion+'", religion),blood_type = IFNULL("'+data.bloodType+'", blood_type),allergies = IFNULL("'+data.allergies+'", allergies),father = IFNULL("'+data.father+'",father),mother = IFNULL("'+data.mother+'", mother),birth_history = IFNULL("'+data.birthHistory+'",birth_history),rankORsn = IFNULL("'+data.rank+'", rankORsn),immunization = IFNULL("'+data.immunization+'", immunization),family_history = IFNULL("'+data.familyHistory+'",family_history) where patient_id = '+req.query.patient_id+'; ';
            db.query(patientManSQL + sql2 + med + patientInfoUpdate + 'INSERT into activity_logs(account_id, time, type, remarks, patient_id) VALUES ('+req.session.Aid+',"'+moment(new Date()).format('YYYY-MM-DD HH:mm:ss')+'", "patientInfoEdit", "Edited patient Information of '+data.name+'", '+req.query.patient_id+');', function(err, successRows){
              if (err) {
                console.log(err);
              } else {
                var patientManSQL = "SELECT *,"
                                   +" (SELECT time from activity_logs where type='bed' and patient.patient_id = activity_logs.patient_id order by time desc limit 1) as allotment, "
                                   +" (SELECT time from activity_logs where type='bedDischarge' and patient.patient_id = activity_logs.patient_id order by time desc limit 1) as discharge, "
                                   +" (SELECT DATEDIFF(discharge,allotment)) as difference "
                                   +" FROM patient inner join activity_logs USING(patient_id) where patient_id = "+req.query.patient_id+" group by patient_id;";
                var updatedSql2  = "SELECT * FROM patient where patient_id = "+req.query.patient_id+";";

                db.query(patientManSQL + updatedSql2 + med + name,req.session.Aid, function(err, successRows2){
                  res.render('doctor/patientManagement', {p:successRows2[0], p2:successRows2[1], med:successRows2[2], username:successRows2[3], invalid:null});
                });
              }
            });
          } else {
            bcrypt.compare(data.patientPassword, req.session.password, function(err, isMatch){
              if(isMatch) {
                var patientManSQL = "SELECT *,"
                                   +" (SELECT time from activity_logs where type='bed' and patient.patient_id = activity_logs.patient_id order by time desc limit 1) as allotment, "
                                   +" (SELECT time from activity_logs where type='bedDischarge' and patient.patient_id = activity_logs.patient_id order by time desc limit 1) as discharge, "
                                   +" (SELECT DATEDIFF(discharge,allotment)) as difference "
                                   +" FROM patient inner join activity_logs USING(patient_id) where patient_id = "+req.query.passPatient+" group by patient_id;";

                var sql2  = "SELECT * FROM patient where patient_id = "+req.query.passPatient+";";
                var med = "select date_stamp, lab, medicine,diagnosis,bed, initial_assessment from patient_history where patient_id = "+req.query.passPatient+" and status = 'confirmed' order by date_stamp desc;";
                db.query(patientManSQL + sql2 + med + name, req.session.Aid, function(err, successRows){
                  res.render('doctor/patientManagement', {p:successRows[0], p2:successRows[1], med:successRows[2], username:successRows[3], invalid:null, opd:req.query.OPD});
                });
              } else {
                var sql  = "SELECT patient_id,patient_type,name,age,sex,blood_type FROM patient where patient_id = "+req.query.passPatient+";";
                db.query(sql + name, req.session.Aid,function(err, errorRows){
                  res.render('doctor/patientManagement', {p:errorRows[0], p2:null, med:null, username:errorRows[1], invalid:'error'});
                });
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

    //APPOINTMENT
    app.get('/doctor/appointmentManagement', function(req, res){
      if(req.session.email && req.session.sino == 'doctor'){
        if(req.session.sino == 'doctor'){
          var appointmentSQL = 'SELECT * from appointment a inner join patient using(patient_id) where doctor_id = '+req.session.Aid+';';
          var selectPatient = 'SELECT * from patient;';

          db.query(appointmentSQL + selectPatient + name ,req.session.Aid, function(err, rows){
            if (err) {
              console.log(err);
            } else {
              res.render('doctor/appointmentManagement', {appointmentDetails:rows[0], ap:rows[1], username: rows[2]});
            }
          });
        } else {
          res.redirect(req.session.sino+'/dashboard');
        }
      } else {
          res.redirect('../login');
      }
    });
    app.post('/doctor/appointmentManagement', function(req, res){
      var data = req.body;
      if(req.session.email && req.session.sino == 'doctor'){
        if(req.session.sino == 'doctor') {

          if(data.sub == 'cancel') {
          var cancelAppointmentSQL = 'DELETE from appointment where appointment_id = '+req.query.appointmentId+';';
          db.query(cancelAppointmentSQL + 'INSERT into activity_logs(account_id, time, type, remarks) VALUES ('+req.session.Aid+',"'+moment(new Date()).format('YYYY-MM-DD HH:mm:ss')+'", "cancelAppointment", "Canceled appointment with: '+req.query.appointmentPatientName+'");', function(err){
            if(err){
              console.log(err);
            }
          });
          res.redirect(req.get('referer'));
        } else if(data.sub == 'appointment') {
                var splitDateNTime = data.dateNtime.split('T');
                var parseDate      = splitDateNTime[0];
                var parseTime      = splitDateNTime[1] + ':00';
                var parseDateNTime = parseDate+' '+parseTime;
                var nName          = data.appointmentPatientID.split(',');
                var addAppointment = 'INSERT into appointment (doctor_id, patient_id, appointment_timestamp, remarks) VALUES ('+req.session.Aid+', '+nName[0]+', "'+parseDateNTime+'", "'+data.appointmentRemarks+'");';
                db.query(addAppointment + 'INSERT into activity_logs(account_id, time, type, remarks) VALUES ('+req.session.Aid+',"'+moment(new Date()).format('YYYY-MM-DD HH:mm:ss')+'", "appointment", "Set Appointment with '+nName[1]+' on '+parseDateNTime+'");', function(err){
                  if (err) {
                    console.log(err);
                  }
                });
                res.redirect(req.get('referer'));
          }

        } else {
          res.redirect(req.session.sino+'/dashboard');
        }
      } else {
        res.redirect('../login');
      }
    });
    //PRESCRIPTION
    app.get('/doctor/prescriptionManagement', function(req, res){
      if(req.session.email && req.session.sino == 'doctor'){
        if(req.session.sino == 'doctor'){
          if (req.query.opdPatient) {
            var prescriptionSQL = 'SELECT CONCAT("Medicine: ",medicine,"\nQuantity:",quantity,"\nDosage: ", dosage,"\nTimeframe: ", timeframe) AS medications, p.status as STATUS,creation_stamp,patient_type,name,age,prescription_id from prescription p inner join patient using(patient_id) where doctor_id = '+req.session.Aid+' and patient_id = '+req.query.opdPatient+' and p.status ="pending" ORDER BY creation_stamp desc;';
            var confirmedprescriptionSQL = 'SELECT CONCAT("Medicine: ",medicine,"\nQuantity: ",quantity,"\nDosage: ", dosage,"\nTimeframe: ", timeframe) AS medications, p.status as STATUS,creation_stamp,patient_type,name,age,prescription_id from prescription p inner join patient using(patient_id) where p.status = "confirmed" and doctor_id='+req.session.Aid+' ORDER BY creation_stamp desc LIMIT 50;';

            db.query(prescriptionSQL+confirmedprescriptionSQL + name,req.session.Aid, function(err, rows){
              if (err) {
                console.log(err);
              } else {
                res.render('doctor/prescriptionManagement', {prescriptionDetails:rows[0], confirmedprescriptionSQL:rows[1], opdPatientInfo:req.query.opdPatient, username: rows[2]});
              }
            });
          } else {
            var prescriptionSQL = 'SELECT CONCAT("Medicine: ",medicine,"\nQuantity: ",quantity,"\nDosage: ", dosage,"\nTimeframe: ", timeframe) AS medications, p.status as STATUS,creation_stamp,patient_type,name,age,prescription_id from prescription p inner join patient using(patient_id) where doctor_id = '+req.session.Aid+' and p.status ="pending" ORDER BY creation_stamp desc;';
            var confirmedprescriptionSQL = 'SELECT CONCAT("Medicine: ",medicine,"\nQuantity: ",quantity,"\nDosage: ", dosage,"\nTimeframe: ", timeframe) AS medications, p.status as STATUS,creation_stamp,patient_type,name,age,prescription_id from prescription p inner join patient using(patient_id) where p.status = "confirmed" and doctor_id='+req.session.Aid+' ORDER BY creation_stamp desc LIMIT 50;';

            db.query(prescriptionSQL+confirmedprescriptionSQL + name,req.session.Aid, function(err, rows){
              if (err) {
                console.log(err);
              } else {
                res.render('doctor/prescriptionManagement', {prescriptionDetails:rows[0], confirmedprescriptionSQL:rows[1], opdPatientInfo:null, username: rows[2]});
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
    app.post('/doctor/prescriptionManagement', function(req, res){
      if(req.session.email && req.session.sino == 'doctor'){
        if(req.session.sino == 'doctor') {
          var cancelPrescriptionSQL = 'DELETE from prescription where prescription_id = '+req.query.prescriptionId+';';
          db.query(cancelPrescriptionSQL + 'INSERT into activity_logs(account_id, time, type, remarks) VALUES ('+req.session.Aid+',"'+moment(new Date()).format('YYYY-MM-DD HH:mm:ss')+'", "cancelPrescription", "Canceled prescription for: '+req.query.prescriptionPatientName+'");', function(err){
            if(err){
              console.log(err);
            } else {
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
    //LAB REQUEST
    app.get('/doctor/labRequestManagement', function(req, res){
      if(req.session.email && req.session.sino == 'doctor'){
        if(req.session.sino == 'doctor'){
          if(req.query.labPatientInfo){
            var labRequestSQL = 'SELECT * from lab_request l inner join patient using(patient_id) where lab_status = "pending" and (doctor_id = '+req.session.Aid+' and patient_id = '+req.query.labPatientInfo+') ORDER BY timestamp desc;';
            var confirmedLabRequestSQL = 'SELECT * from lab_request l inner join patient using(patient_id) where lab_status = "confirmed" and patient_id = '+req.query.labPatientInfo+' ORDER BY timestamp desc LIMIT 50;';

            db.query(labRequestSQL + confirmedLabRequestSQL + name,req.session.Aid, function(err, rows){
              res.render('doctor/labRequestManagement', {labrequestDetails:rows[0], confirmedLabRequestSQL:rows[1], username:rows[2]});
            });
          } else {
            var labRequestSQL = 'SELECT * from lab_request l inner join patient using(patient_id) where lab_status = "pending" ORDER BY timestamp desc;';
            var confirmedLabRequestSQL = 'SELECT * from lab_request l inner join patient using(patient_id) where lab_status = "confirmed" ORDER BY timestamp desc LIMIT 50;';

            db.query(labRequestSQL + confirmedLabRequestSQL + name,req.session.Aid, function(err, rows){
              if (err) {
                console.log(err);
              } else {
                res.render('doctor/labRequestManagement', {labrequestDetails:rows[0],confirmedLabRequestSQL:rows[1], username:rows[2]});
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
    app.post('/doctor/labRequestManagement', function(req, res){
      if(req.session.email && req.session.sino == 'doctor'){
        if(req.session.sino == 'doctor') {
          var cancelLabRequestSQL = 'DELETE from lab_request where request_id = '+req.query.requestId+';';
          db.query(cancelLabRequestSQL + 'INSERT into activity_logs(account_id, time, type, remarks) VALUES ('+req.session.Aid+',"'+moment(new Date()).format('YYYY-MM-DD HH:mm:ss')+'", "cancelLabRequest", "Canceled lab request for: '+req.query.labrequestPatientName+'");', function(err){
            if(err){
              console.log(err);
            } else {
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
    // PROFILE MANAGEMENT
    app.get('/doctor/profileManagement', function(req, res){
      if(req.session.email && req.session.sino == 'doctor'){
        if (req.session.sino == 'doctor') {
          var profileInfoSQL  = 'SELECT name, age, address, sex, account_id, phone from user_accounts where account_id = '+req.session.Aid+';';
          var activityLogsSQL = 'SELECT * from activity_logs where account_id = '+req.session.Aid+' ORDER by logs_id desc LIMIT 10;';
          db.query(profileInfoSQL + activityLogsSQL + name,req.session.Aid, function(err, rows){
            if (err) {
              console.log(err);
            } else {
              res.render('doctor/profileManagement', {pInfo:rows[0], activityInfo: rows[1], username: rows[2]});
            }
          });
        } else {
          res.redirect(req.session.sino+'/dashboard');
        }
      } else {
        res.redirect('../login')
      }
    });

    app.post('/doctor/profileManagement', function(req, res){
      var data = req.body;
      if (req.session.email && req.session.sino == 'doctor') {
        if (req.session.sino == 'doctor') {
          bcrypt.compare(data.oldPass, req.session.password, function(err, isMatch){
            if(isMatch) {
              req.flash('success', 'Successfully changed profile!');
              bcrypt.genSalt(10, function(err, salt){
                bcrypt.hash(data.newPass, salt, function(err, hash){
                  if (data.newPass) {
                    var updateProfileSQL = 'UPDATE user_accounts SET name = "'+data.name+'", address = "'+data.address+'", phone = '+data.phone+', password = "'+hash+'" WHERE account_id = '+req.session.Aid+';';
                    db.query(updateProfileSQL + 'INSERT into activity_logs(account_id, time, type, remarks) VALUES ('+req.session.Aid+',"'+moment(new Date()).format('YYYY-MM-DD HH:mm:ss')+'", "settingsProfileManagement", "Edited personal info.");', function(err, rows){
                      if (err) {
                        console.log(err);
                      } else {
                          res.redirect('../logout');
                      }
                    });
                  } else {
                    var updateProfileSQL = 'UPDATE user_accounts SET name = "'+data.name+'", address = "'+data.address+'", phone = '+data.phone+' WHERE account_id = '+req.session.Aid+';';
                    db.query(updateProfileSQL + 'INSERT into activity_logs(account_id, time, type, remarks) VALUES ('+req.session.Aid+',"'+moment(new Date()).format('YYYY-MM-DD HH:mm:ss')+'", "settingsProfileManagement", "Edited personal info.");', function(err, rows){
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
}
//CREATE A QUERY onsubmit of LAB REQUEST to be passed on the OPD tab
