// Day 2  Scrolling Option

import 'package:flutter/material.dart';

class NewListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(" Day 2"),
        ),
        // there is one more way to do a scroll view design by using ListView Widget
        // first you need to remove SingleChildScrollView

        // change Column widget with ListView
        body: ListView(
          children: [
            Container(
              height: 200,
              color: Colors.blue,
            ),
            Container(
              height: 300,
              color: Colors.red,
            ),
            Container(
              height: 400,
              color: Colors.green,
            ),
            Container(
              color: Colors.pink,
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}

// Thats is for today see you all in next video
// show your support to us
// subscribe Code With Nix to Youtube all update from basic to advance Flutter Design

// 100daysOfFlutter

// Thank you all
