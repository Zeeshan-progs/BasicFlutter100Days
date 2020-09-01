import 'package:flutter/material.dart';

import 'Day 12/NewLogIn.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NewLogin(),
    );
  }
}
