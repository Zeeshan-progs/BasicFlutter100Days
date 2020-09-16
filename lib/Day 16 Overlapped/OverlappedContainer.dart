import 'package:flutter/material.dart';

Color blue = Color(0xFF51B6F0);
Color purple = Color(0xFF7477F7);
Color deepPurple = Color(0xFF9337FD);
Color white = Colors.white;
Color grey = Colors.grey;

class OverlappedContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            buildMenu(),
            firstContainer(),
            secondContainer(),
            thirdContainer(),
          ],
        ),
      ),
    );
  }

  Widget buildMenu() {
    return Container(
      height: 100,
      width: double.infinity,
      color: blue,
      child: Material(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconText(
                icon: Icon(
                  Icons.favorite_border,
                  size: 30,
                  color: grey,
                ),
                text: 'Health'),
            IconText(
              icon: Icon(
                Icons.headset,
                size: 30,
                color: grey,
              ),
              color: Colors.blue,
              width: 1.4,
              text: 'music',
            ),
            IconText(
              icon: Icon(
                Icons.vertical_align_top,
                size: 30,
                color: grey,
              ),
              text: 'SPORT',
            ),
          ],
        ),
      ),
    );
  }

  Widget firstContainer() {
    return Container(
      width: double.infinity,
      color: purple,
      alignment: Alignment.bottomLeft,
      child: Material(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(80),
        ),
        color: blue,
        child: Container(
          alignment: Alignment.bottomLeft,
          padding: EdgeInsets.only(bottom: 40, left: 30, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
               alignment: Alignment.bottomLeft,
               padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  'Today 5:30 pm',
                  style: TextStyle(fontSize: 20, color: grey),
                ),
              ),
              Text(
                'NYC Electronic Music Meetup ',
                style: TextStyle(
                  fontSize: 40,
                  color: white,
                ),
              ),
              Container(
               alignment: Alignment.bottomRight,
               padding: EdgeInsets.only(right: 30),
                child: Opacity(
                  opacity: .2,
                  child: Icon(
                    Icons.headset,
                    size: 80,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget secondContainer() {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      color: deepPurple,
      width: double.infinity,
      child: Material(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(80),
        ),
        color: purple,
        child: Center(
          child: Text(
            ' Aother Material Color used with text',
            style: TextStyle(color: white, fontSize: 30),
          ),
        ),
      ),
    );
  }

  Widget thirdContainer() {
    return Container(
      color: Colors.black,
      width: double.infinity,
      child: Material(
        color: deepPurple,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(80),
        ),
        child: Center(
          child: Text('Bottom Text',
              style: TextStyle(fontSize: 30, color: white)),
        ),
      ),
    );
  }
}

class IconText extends StatelessWidget {
  final Icon icon;
  final String text;
  final Color color;
  final double width;
  const IconText({
    this.icon,
    this.text,
    this.color = Colors.grey,
    this.width = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: icon,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            border: Border.all(width: width, color: color),
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        Text(
          text,
          style: TextStyle(color: grey, fontSize: 20),
        ),
      ],
    );
  }
}

// Thats it for today

// Like

// share

// subscribe

// Code With Nix

// Jai   Hind
