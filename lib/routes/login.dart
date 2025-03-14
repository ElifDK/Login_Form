import 'package:flutter/material.dart';
import 'package:login_form/util/colors.dart';
import 'package:login_form/util/dimensions.dart';
import 'package:login_form/util/styles.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'LOGIN',
          style: kAppBarTitleTextStyle,
        ),
        backgroundColor: AppColors.primary,
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: Dimen.regularPadding,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: OutlinedButton(
                onPressed: () {
                  //TODO: setState()
                },
                style: OutlinedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  child: Text(
                    'Login Attempt: ',
                    style: kButtonDarkTextStyle,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}