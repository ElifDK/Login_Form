import 'package:flutter/material.dart';
import 'package:login_form/util/styles.dart';


class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  int _counter = 0;

  // simulate a network requests with delays
  void getData () async{
     String name = await Future.delayed(Duration(seconds: 3), () {
      return ('this name');
    });

    print ('do something with the $name');
}
@override
  void initState() {
    super.initState();
    getData();
    print ('initState function');
}

  @override
  Widget build(BuildContext context) {
    print ('Build Function');
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SIGNUP',
          style: kAppBarTitleTextStyle,
        ),
      ),
      body: ElevatedButton(onPressed: (){
        setState(() {
          _counter++;
        });
      },
          child: Text('Counter $_counter'))
    );
  }
}