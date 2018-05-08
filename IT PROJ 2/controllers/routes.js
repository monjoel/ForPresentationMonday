module.exports = function(app, db, bcrypt, moment, CronJob, io){
  app.get('/', function(req, res){
    if(req.session.email){
        res.redirect(req.session.sino+'/dashboard');
    } else {
        res.redirect('login');
    }
  });

  app.get('/login', function(req, res){
    if(req.session.email){
        res.redirect(req.session.sino+'/dashboard');
    } else {
        res.render('login');
    }
  });

  app.post('/login', function(req, res){
      // res.end(req.body.email);
      req.checkBody('username', 'username is required').notEmpty();
      req.checkBody('pass', 'password is required').notEmpty();
      if (req.validationErrors()) {
        req.flash('danger', 'Failed to login!');
        res.render('login');
      }  else {
        var username = req.body.username;
        var password = req.body.pass;
        var user  = "SELECT * FROM user_accounts WHERE username = ?;" ;

        db.query(user, username, function(err, rows, fields){
          if(err){
            console.log(err);
          }
          else if(rows == ''){
            req.flash('danger', 'Invalid Credentials!');
            res.redirect(req.get('referer'));
          } else {
            bcrypt.compare(password, rows[0].password, function(err, isMatch) {
              if (err) {
                console.log(err);
              } else if(isMatch) {
                req.session.sino = rows[0].account_type;
                req.session.Aid = rows[0].account_id;
                req.session.email = req.body.username;
                req.session.name = rows[0].name;
                req.session.password = rows[0].password;
                db.query('INSERT into activity_logs(account_id, time, type, remarks) VALUES ('+req.session.Aid+',"'+moment(new Date()).format('YYYY-MM-DD HH:mm:ss')+'", "log", "Logged in");', function(err){
                  if (err) {
                    console.log(err);
                  }
                });
                res.redirect(req.session.sino +'/dashboard');
                if (req.session.sino == 'doctor') {
                  new CronJob('* * * * *', function(){
                    db.query('select name, appointment_timestamp, remarks from appointment inner join patient using(patient_id) where doctor_id = '+req.session.Aid+';', function(err, rows){
                      if (err) {
                        console.log(err);
                      }
                      var resultDB = JSON.parse(JSON.stringify(rows));
                      for (var i in resultDB) {
                        if (moment(new Date()).add(5, 'minute').format("MM-DD-YYYY HH:mm") == moment(resultDB[i].appointment_timestamp).format("MM-DD-YYYY HH:mm")) {
                          io.emit('type', {what:'appointment', message:'Appointment for <strong>'+resultDB[i].name+'</strong> !!!<br>REMARKS: <strong>'+resultDB[i].remarks+'</strong><br><h3>In 5 Minutes !!</h3>'});
                        }
                      }
                    });
                  }, null, true);
                }
              } else {
                req.flash('danger', 'Invalid Credentials!');
                res.redirect(req.get('referer'));
              }
            });
          }
        });
      }
  });

  app.get('/logout', function(req, res){
    if(req.session.email){
      db.query('INSERT into activity_logs(account_id, time, type, remarks) VALUES ('+req.session.Aid+',"'+moment(new Date()).format('YYYY-MM-DD HH:mm:ss')+'", "log","Logged out");', function(err){
        if (err) {
          console.log(err);
        } else {
          req.session.destroy();
          res.header('Cache-Control', 'no-cache');
          res.redirect('login');
        }
      });
    } else {
      res.redirect('login');
    }
  });

  app.get('/error', function(req, res){
      res.render('error');
  });

};
