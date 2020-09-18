import 'package:flutter/material.dart';
import 'package:flutter100days/Day%2017/Components/search_back_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SearchBackWidget(),
    );
  }
}
