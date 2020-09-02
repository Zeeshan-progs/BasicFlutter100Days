import 'package:flutter/material.dart';
import 'package:flutter100days/Day%2012/NewLogIn.dart';
import 'package:flutter100days/Day%2012/NewSignUp.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NewSignUp(),
    );
  }
}
