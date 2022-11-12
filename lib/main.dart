import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project_inc/view_model/changes.dart';
import 'package:project_inc/views/login_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    Changes(
      child: MaterialApp(
        home: Login(),
      ),
    ),
  );
}
