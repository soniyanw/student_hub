import 'package:flutter/material.dart';
import 'package:project_inc/views/login_page.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  var openeye = Icons.remove_red_eye;
  var closeeye = Icons.visibility_off;
  var using = Icons.remove_red_eye;
  var using1 = Icons.remove_red_eye;

  var enteredpassreset = '';
  bool p = true;
  bool p1 = true;
  var newpass1;
  var enteredpassconreset = '';
  var newpass2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reset Password"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: 48.0,
              ),
              TextFormField(
                onChanged: (newpass1) {
                  enteredpassreset = newpass1;
                },
                keyboardType: TextInputType.visiblePassword,
                obscureText: p,
                decoration: InputDecoration(
                  hintText: 'Enter your new Password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock_outline_rounded),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if (p == false) {
                            p = true;
                          } else {
                            p = false;
                          }
                          if (using == openeye) {
                            using = closeeye;
                          } else {
                            using = openeye;
                          }
                        });
                      },
                      icon: Icon(using)),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                onChanged: (newpass2) {
                  enteredpassconreset = newpass2;
                },
                keyboardType: TextInputType.visiblePassword,
                obscureText: p1,
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock_outline_rounded),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if (p1 == false) {
                            p1 = true;
                          } else {
                            p1 = false;
                          }
                          if (using1 == openeye) {
                            using1 = closeeye;
                          } else {
                            using1 = openeye;
                          }
                        });
                      },
                      icon: Icon(using1)),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                width: double.infinity,
                height: 54.0,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                      shape: MaterialStateProperty.all(StadiumBorder())),
                  onPressed: () {
                    if (enteredpassreset == '' || enteredpassconreset == '') {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Fill all the fields properly"),
                        backgroundColor: Colors.blue,
                      ));
                    } else {
                      if (enteredpassconreset == enteredpassreset) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Password is reset successfully"),
                          backgroundColor: Colors.blue,
                        ));
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Passwords do not match"),
                          backgroundColor: Colors.blue,
                        ));
                      }
                    }
                  },
                  child: Text(
                    'Reset',
                    style: TextStyle(color: Colors.white, fontSize: 25.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
