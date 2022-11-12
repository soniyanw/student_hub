import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:project_inc/models/collaborations.dart';

abstract class Services {
  void resetPass({String? email});
  void signin({String? mail, String? pass});
  void signout();
  void signup({String? name, String? mail, String? pass});
  void postfeedback(String? feedback);
  Future<String> getcurrentuser_id();
  Future<String> getcurrentuser_mail();
  Future<String> getcurrentuser_name();
  void postrequest(String? project, String skills, bool offer);
  Future<BuiltList<Collaborations>> getcollaborations();
}

final purple = Colors.purple[900];
final styling = TextStyle(color: Colors.purple[900]);
