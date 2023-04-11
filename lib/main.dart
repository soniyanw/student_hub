import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:project_inc/view_model/changes.dart';
import 'package:project_inc/views/auth/login_page.dart';

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Firebase.initializeApp();
  WidgetsFlutterBinding.ensureInitialized();
/*
  final firebaseUser = FirebaseAuth.instance.currentUser;
  print(firebaseUser);
  Widget firstWidget;

  if (firebaseUser != null) {
    firstWidget = Logged();
  } else {
    firstWidget = Login();
  }
*/

  runApp(
    Changes(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Roboto'),
        home: Login(),
      ),
    ),
  );
}
