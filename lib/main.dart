import 'package:flutter/material.dart';
import 'package:login_form/routes/login.dart';
import 'package:login_form/routes/signup.dart';
import 'package:login_form/routes/welcome.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/login',
    routes: {
      '/': (context) => Welcome(),
      '/signup' : (context) => SignUp(),
      '/login': (context) => Login()
    }
    ,
  ));
}
