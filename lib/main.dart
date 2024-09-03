import 'package:flutter/material.dart';
import 'package:registration_app/registration/Login.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/': (context) => const Login(),
    },
  ));
}