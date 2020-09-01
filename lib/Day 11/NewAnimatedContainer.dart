import 'dart:math';

import 'package:flutter/material.dart';

class NewAnimatedContainer extends StatefulWidget {
  @override
  _NewAnimatedContainerState createState() => _NewAnimatedContainerState();
}

class _NewAnimatedContainerState extends State<NewAnimatedContainer> {
  Color myColor = Colors.green; // custom variable for color to animate color

  // create height and width variable using double type
  double myHeight = 100; // initial height
  double myWidth = 140; // initial width

  //if you want to add rounded boundary

  BorderRadiusGeometry myRadius = BorderRadius.all(
    Radius.circular(60),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("day 11 Animated Container "),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 1),
              height: myHeight,
              width: myWidth,

              // use decoration  property to apply circular radius
              decoration: BoxDecoration(
                color: myColor,
                borderRadius: myRadius,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            final random = Random();

            myColor = Color.fromRGBO(
              random.nextInt(255), // red
              random.nextInt(255), //green
              random.nextInt(255), // blue
              1, // opacity
            );

            myHeight = random.nextInt(300).toDouble();
            myWidth = random.nextInt(300).toDouble();
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

// Thats it for today basics of animated container

//thank you

// Code With Nix

// 100DaysofFlutter
// 100DaysofCode
//  #CodeWithNix

// like
// share
//comment

//Jai hind  /////////
