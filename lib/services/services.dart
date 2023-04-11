import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:project_inc/models/answer.dart';
import 'package:project_inc/models/collaborations.dart';
import 'package:project_inc/models/queries.dart';

import '../models/feedbacks.dart';

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
  void postquery(String query, String link);
  Future<BuiltList<Queries>> getqueries();
  Future<BuiltList<Answer>> getanswers(String queryid);
  void postans(String queryid, String ans);
  launchURLtoWeb(String urll);
  Future<BuiltList<Feedbacks>> getFeedbacks();
}

final purple = Colors.purple[900];
final styling = TextStyle(color: Colors.purple[900]);
