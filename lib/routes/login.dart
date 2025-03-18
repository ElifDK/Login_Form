import 'package:flutter/material.dart';
import 'package:login_form/util/colors.dart';
import 'package:login_form/util/dimensions.dart';
import 'package:login_form/util/styles.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  int counter = 0;
  final _formKey = GlobalKey<FormState>();
  String email = '';
  String pass = '';

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
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        label: SizedBox(
                          width: 100,
                          child: Row(
                            children: [Icon(Icons.email), Text('Email')],
                          ),
                        ),
                        fillColor: AppColors.textFieldFillColor,
                        filled: true,
                        labelStyle: kBoldLabelStyle,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.primary,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      validator: (value) {
                        if (value != null) {
                          if (value.isEmpty) {
                            return 'Cannot leave e-mail empty';
                          }
                        }
                      },
                      onSaved: (value) {
                        email = value ?? '';
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      autocorrect: false,
                      enableSuggestions: false,
                      decoration: InputDecoration(
                        label: SizedBox(
                          width: 150,
                          child: Row(
                            children: [Icon(Icons.password), Text('Password')],
                          ),
                        ),
                        fillColor: AppColors.textFieldFillColor,
                        filled: true,
                        labelStyle: kBoldLabelStyle,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.primary,
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      validator: (value) {
                        if (value != null) {
                          if (value.isEmpty) {
                            return 'Cannot leave password empty';
                          }
                          if (value.length < 6) {
                            return 'Too short';
                          }
                        }
                      },
                      onSaved: (value) {
                        pass = value ?? '';
                      },
                    ),
                  )
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: OutlinedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        print ('Email $email Password $pass');
                        _formKey.currentState!.save();
                        print ('Email $email Password $pass');
                        setState(() {
                          counter++;
                        });
                      }
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 12.0),
                      child: Text(
                        'Login Attempt: $counter ',
                        style: kButtonDarkTextStyle,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
