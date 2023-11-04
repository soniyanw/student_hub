import 'package:flutter/material.dart';

abstract class Services {
  Future<void> resetPass({String? email});
  Future<void> signin({String? mail, String? pass});
  Future<void> signout();
  Future<void> signup({String? name, String? mail, String? pass});
}

final purple = Colors.purple[900];
final styling = TextStyle(color: Colors.purple[900]);
