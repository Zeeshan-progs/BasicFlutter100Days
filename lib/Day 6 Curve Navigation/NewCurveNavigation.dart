// Day 6 Curved NavigationBar

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class NewCurveNavigation extends StatefulWidget {
  @override
  _NewCurveNavigationState createState() => _NewCurveNavigationState();
}

class _NewCurveNavigationState extends State<NewCurveNavigation> {
  int onClick = 0;

  // now to navigate you need to create a list and list always be final type

  final List pageToNavigate = [
    Container(color: Colors.red),
    Container(color: Colors.pink),
    Container(color: Colors.yellow),
    Container(color: Colors.black),
  ];

// list is array type
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Day 6 Curved Navigation"),
      ),

      // body to show the changes
      body: pageToNavigate[onClick],

      bottomNavigationBar: CurvedNavigationBar(
        // there is more properties in curved NavigationBar Widget as
        backgroundColor: Colors.pink[700],
        color: Colors.white, // by default color is white you can leave it as
        animationDuration: Duration(milliseconds: 400),
        // adding duration time yiu can as you want
        // you can add navigation also by using onTap property
        // index is a value that store clicking index means which icon did you clicked

        onTap: (index) {
          // change navigation you need to add setState or setState is a
          // Stateful widget property so you need to use a stateless
          // widget
          setState(() {
            // need a counter variable
            // assign counter variable with index
            onClick = index;
            // you can see the result by clicking on and print index
            // by using print statement
            print(onClick);
          });
        },

        items: [
          Icon(
            Icons.arrow_forward,
            size: 30,
          ),
          Icon(
            Icons.compare_arrows,
            size: 30,
          ),
          Icon(Icons.person, size: 30),
          Icon(Icons.search, size: 30),
        ],
      ),
    );
  }
}

// that's it for today
// Like
// Share
// subscribe

// get all latest updates

//100daysOfflutter

//100DaysOfCode

// Jai Hind
