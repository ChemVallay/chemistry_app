import 'package:flutter/material.dart';
// this class make Navigator battwen screens
class Goo {
 Goo._();
 static final instance = Goo._();
  static void pop(BuildContext context) {
    Navigator.of(context).pop();
  }
}
