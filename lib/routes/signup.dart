import 'package:flutter/material.dart';
import 'package:login_form/util/colors.dart';
import 'package:login_form/util/styles.dart';


class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    print ('SignUp page build');
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SIGNUP',
          style: kAppBarTitleTextStyle,
        ),
        backgroundColor: AppColors.primary,
        centerTitle: true,
        elevation: 0.0,
      ),
    );
  }
}