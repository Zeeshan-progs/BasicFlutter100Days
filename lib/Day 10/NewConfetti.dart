// Day 10 Confetti celebration

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';


class NewConfetti extends StatefulWidget {
  @override
  _NewConfettiState createState() => _NewConfettiState();
}

class _NewConfettiState extends State<NewConfetti> {

  ConfettiController control = ConfettiController();

  @override
  // define initState
  void initState() {
    super.initState();
    control = ConfettiController(
      duration: Duration(seconds: 10),
    ); // set time of confetti
  }

  // define dispose to clear memory after another event

  @override
  void dispose() {
    super.dispose();
    control.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Day 10 Confetti "),
      //   centerTitle: true,
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: ConfettiWidget(
              // confetti widget mainly needs a confetticontroller
              // here we are providing a variable to controll confetti
              // variable must be as confettiecontroller type
              confettiController: control,
              // direction is in left you can change

              shouldLoop: true,
              blastDirectionality: BlastDirectionality.explosive,
            ),
          ),

          // create a button for celebration
          // FlatButton(
          //   onPressed: () {
          //     control.play();
          //   },
          //   child: Text("Click To Celebrate "),
          // ),
        ],
      ),
    );
  }
}

// Thats it for today
// Subscribe
// like
// share
// comments

// #CodeWithNix

// 100Daysofcode
// 100Daysofflutter

// ThankYou
