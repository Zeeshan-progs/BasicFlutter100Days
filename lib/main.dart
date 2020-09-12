import 'package:flutter/material.dart';
import 'package:flutter100days/Day%20%2015%20StarBucks%20Menu/Starbucks.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Starbucks(),
    );
  }
}
