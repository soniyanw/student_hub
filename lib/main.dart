import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project_inc/view_model/changes.dart';
import 'package:project_inc/views/onboarding_page.dart';

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    Changes(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Roboto'),
        home: OnboardingScreen(),
      ),
    ),
  );
}
