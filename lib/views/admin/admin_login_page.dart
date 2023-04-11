import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:project_inc/services/service_imp.dart';
import 'package:project_inc/services/services.dart';
import 'package:project_inc/views/admin/admin_home_page.dart';
import 'package:project_inc/views/auth/login_page.dart';

class AdminLogin extends StatefulWidget {
  const AdminLogin({Key? key}) : super(key: key);

  @override
  _AdminLoginState createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  Services imp = new ServiceImp();
  bool p = true;
  var openeye = Icons.remove_red_eye;
  var closeeye = Icons.visibility_off;
  var using = Icons.remove_red_eye;
  var code = '';
  var enteredpass = '';
  var newtext;
  var newpass;
  Future<void> initi() async {
    await Future.delayed(const Duration(seconds: 1));
    FlutterNativeSplash.remove();
  }

  @override
  void initState() {
    initi();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);

          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/bgimage.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                        (Route<dynamic> route) => false,
                      );
                    },
                    child: Text(
                      "Not Admin?",
                      style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Student-Hub',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 50.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 36.0,
                  ),
                  TextFormField(
                    onChanged: (newtext) {
                      code = newtext;
                    },
                    style: TextStyle(color: Colors.white),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        hintText: 'Enter your secret code',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.white),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 2, color: Colors.white), //<-- SEE HERE
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 2, color: Colors.white54), //<-- SEE HERE
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 4, color: Colors.white54), //<-- SEE HERE
                        ),
                        prefixIcon: Icon(
                          Icons.mail,
                          color: Colors.white,
                        ),
                        hintStyle: TextStyle(color: Colors.white)),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    onChanged: (newpass) {
                      enteredpass = newpass;
                    },
                    style: TextStyle(color: Colors.white),
                    obscureText: p,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2, color: Colors.white), //<-- SEE HERE
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2, color: Colors.white54), //<-- SEE HERE
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 4, color: Colors.white54), //<-- SEE HERE
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.white),
                      ),
                      hintText: 'Enter your Password',
                      hintStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(
                        Icons.lock_outline_rounded,
                        color: Colors.white,
                      ),
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
                          icon: Icon(
                            using,
                            color: Colors.white,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 36.0,
                  ),
                  Container(
                    width: double.infinity,
                    height: 54.0,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all(StadiumBorder())),
                      onPressed: () {
                        if (code == "abcde" && enteredpass == "abcde") {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(
                              "Logged in Successfully",
                              style: TextStyle(color: Colors.purple[900]),
                            ),
                            backgroundColor: Colors.white,
                          ));
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Feedbacks()),
                            (Route<dynamic> route) => false,
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(
                              "Invalid Credentials",
                              style: TextStyle(color: Colors.purple[900]),
                            ),
                            backgroundColor: Colors.white,
                          ));
                        }
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.purple[900], fontSize: 25.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
