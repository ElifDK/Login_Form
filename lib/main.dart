import 'package:flutter/material.dart';
import 'package:login_form/routes/login.dart';
import 'package:login_form/routes/signup.dart';
import 'package:login_form/routes/welcome.dart';
import 'package:login_form/util/colors.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/login',
    routes: {
      '/': (context) => Welcome(),
      '/signup' : (context) => SignUp(),
      '/login': (context) => Login()
    },
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
          appBarTheme: AppBarTheme(
            backgroundColor: AppColors.primary,
            elevation: 0.0,
            centerTitle: true,
            // dont want auto back button
          ))),
  );
}

