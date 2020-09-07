import 'package:flutter/material.dart';

import 'Day 14 on Board/NewOnBoard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CustomOnBoard(),
    );
  }
}
