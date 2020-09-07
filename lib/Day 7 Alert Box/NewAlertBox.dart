// day 7 Alert Message

import 'package:flutter/material.dart';

class NewAlert extends StatefulWidget {
  @override
  _NewAlertState createState() => _NewAlertState();
}

class _NewAlertState extends State<NewAlert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Day 7 Alert "),
        centerTitle: true,
      ),
      body: Column(
        children: [
          RaisedButton(
              child: Text("Show Alert"),
              onPressed: () {
                setState(() {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertMessage();
                    },
                  );
                });
              }),
        ],
      ),
    );
  }
}

class AlertMessage extends StatelessWidget {
  const AlertMessage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
// define Alert what ever you want
// Text Message
// Images
// Action Buttons etc

      title: Text("its me Alert"),
      content: Image.asset('assets/alert-2.gif'),
      actions: [
        FlatButton(
            onPressed: () {
              print("Yes is Tapped");
            },
            child: Text("Yes")),
        FlatButton(
            onPressed: () {
              print("No Is Tapped ");
            },
            child: Text("No")),
        // if you wanna check that your action button is working or not
        // add print statement to show
      ],
    );
  }
}

// Thats it for today
// see you all in next video

// Subscribe
// Like
// Share

// 100DaysofFlutter
// 100daysofcode
