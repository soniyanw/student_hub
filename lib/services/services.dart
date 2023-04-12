import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:project_inc/models/answer.dart';
import 'package:project_inc/models/collaborations.dart';
import 'package:project_inc/models/queries.dart';

import '../models/feedbacks.dart';

abstract class Services {
  Future<void> resetPass({String? email});
  Future<void> signin({String? mail, String? pass});
  Future<void> signout();
  Future<void> signup({String? name, String? mail, String? pass});
  Future<void> postfeedback(String? feedback);
  Future<String> getcurrentuser_id();
  Future<String> getcurrentuser_mail();
  Future<String> getcurrentuser_name();
  Future<void> postrequest(String? project, String skills, bool offer);
  Future<BuiltList<Collaborations>> getcollaborations();
  Future<void> postquery(String query, String link);
  Future<BuiltList<Queries>> getqueries();
  Future<BuiltList<Answer>> getanswers(String queryid);
  Future<void> postans(String queryid, String ans);
  launchURLtoWeb(String urll);
  Future<BuiltList<Feedbacks>> getFeedbacks();
  Future<BuiltList<Collaborations>> getMycollaborations();
  Future<void> deleteCollab(String collabid);
}

final purple = Colors.purple[900];
final styling = TextStyle(color: Colors.purple[900]);
