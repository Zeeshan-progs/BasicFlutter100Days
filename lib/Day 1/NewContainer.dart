// Day 1 Flutter Basic to Advance Design Only For You Enjoy..

// work start in flutter by importing material package
import 'package:flutter/material.dart';

// like all programming language dart's Flutter also run  by using main method

// create a Stateless Widget
//give name of widget that you previously taken
class NewContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // return a Material App  flutter page always load with the help materialApp widget

      home: Scaffold(
        appBar: AppBar(
          title: Text("Day 1 Design"),
        ),

        // then create body
        // For Body we need a body property

        body: Container(
          // you can take any thing else as i'll take Container we would learn more about that latter
          // pre  (  Ctrl + Space  ) to see the all properties of any widget
          child: Column(
            // to make all container in center we will use
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,

            // its upto  you to apply mainAxis or CrossAxis Alignment property
            // we are using Expanded Widget thats why the result are same if yo delete them.
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  width: 300,
                  color: Colors.red,
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  width: 250,
                  color: Colors.black,
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  width: 200,
                  color: Colors.amber,
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  width: 150,
                  color: Colors.blue,
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.brown,
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  width: 50,
                  color: Colors.greenAccent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
