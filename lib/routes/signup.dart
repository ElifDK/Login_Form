import 'package:flutter/material.dart';
import 'package:login_form/util/styles.dart';
import 'package:http/http.dart' as http;

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}


class _SignUpState extends State<SignUp> {

  Future<void> getData () async {
    await Future.delayed(Duration(seconds: 7), () {
      print ('response');
    });
    print ('do something with this response');
  }



  @override
  void initState() {
    super.initState();
    print ('Initstate function');
    getData();
  }

  int _counter = 0;
   @override
  Widget build(BuildContext context) {
     print('Build function');
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up', style: kAppBarTitleTextStyle,),
      ),
      body: ElevatedButton(onPressed: () {
        setState(() {
          _counter++;
        });
      },
          child: Text('Example $_counter'))
      ,
   );
  }
}
