import 'package:flutter/material.dart';
import 'package:registration_app/registration/Login.dart';
import 'package:registration_app/registration/home.dart';
import 'package:registration_app/registration/register.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/': (context) => const Home(),
      '/register': (context) => const Register(),
    },
  ));
}