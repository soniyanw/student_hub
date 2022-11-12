import 'package:flutter/material.dart';
import 'package:project_inc/views/reset_password.dart';

class EnterOtp extends StatefulWidget {
  const EnterOtp({Key? key}) : super(key: key);

  @override
  _EnterOtpState createState() => _EnterOtpState();
}

class _EnterOtpState extends State<EnterOtp> {
  var enteredotp = '';
  var newotp;
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
                onChanged: (newotp) {
                  enteredotp = newotp;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Enter the otp sent to your mail',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              TextButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("A new OTP is sent"),
                    backgroundColor: Colors.blue,
                  ));
                },
                child: Text(
                  'Resend otp?',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.blue,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: double.infinity,
                height: 54.0,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                      shape: MaterialStateProperty.all(StadiumBorder())),
                  onPressed: () {
                    if (enteredotp == '') {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Fill the field properly"),
                        backgroundColor: Colors.blue,
                      ));
                    } else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ResetPassword()));
                    }
                  },
                  child: Text(
                    'Reset Password',
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
