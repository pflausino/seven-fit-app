import 'package:flutter/material.dart';
import 'package:seven_fit/app/modules/login/login/login_module.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SevenFit',
      theme: ThemeData(
        primaryColor: Color(0xffffd905),
        accentColor: Color(0xff00C6D1),
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.yellow[700]),
          body2: TextStyle(color: Colors.black),
          button: TextStyle(color: Colors.blue),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: LoginModule(),
    );
  }
}
