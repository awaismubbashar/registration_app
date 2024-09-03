import 'package:flutter/material.dart';
import 'package:registration_app/registration/Login.dart';
import 'package:registration_app/registration/register.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/': (context) => const Register(),
    },
  ));
}