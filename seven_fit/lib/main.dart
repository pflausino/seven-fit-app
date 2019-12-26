import 'package:flutter/material.dart';
import 'package:seven_fit/screens/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SevenFit",
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Color.fromARGB(255, 4, 125, 141)),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
