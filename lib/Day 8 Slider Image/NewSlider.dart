import 'package:flutter/material.dart';

// day 8 Image slider using buttons

// create stateful widget

class NewImageSlider extends StatefulWidget {
  @override
  _NewImageSliderState createState() => _NewImageSliderState();
}

class _NewImageSliderState extends State<NewImageSlider> {
  // create variables for toggle
  int onClick = 0;
  int onButtonClick = 0;

  // create image list

  final List imageList = [
    Image.asset('assets/n1.png'),
    Image.asset('assets/n2.png'),
    Image.asset('assets/n3.png'),
    Image.asset('assets/n4.jpg'),
    Image.asset('assets/n5.jpg'),
    Image.asset('assets/n6.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Day 8 Image Slider"),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: () {
                    setState(() {
                      if (onClick == 0) {
                        onClick = imageList.length - 1;
                      } else {
                        onClick--;
                      }
                    });
                  },
                ),
                Container(
                  height: 200,
                  width: 200,
                  child: imageList[onClick],
                ),
                IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      setState(() {
                        if (onClick == imageList.length - 1) {
                          onClick = 0;
                        } else {
                          onClick++;
                        }
                      });
                    })
              ],
            ),
          ),
          SizedBox(height: 40),
          Container(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FlatButton(
                    onPressed: () {
                      setState(() {
                        if (onButtonClick == 0) {
                          onButtonClick = imageList.length - 1;
                        } else {
                          onButtonClick--;
                        }
                      });
                    },
                    child: Row(
                      children: [
                        Icon(Icons.arrow_back),
                        Text("Prev"),
                      ],
                    )),
                Container(
                  height: 200,
                  width: 180,
                  child: imageList[onButtonClick],
                ),
                FlatButton(
                    onPressed: () {
                      setState(() {
                        if (onButtonClick == imageList.length - 1) {
                          onButtonClick = 0;
                        } else {}
                        onButtonClick++;
                      });
                    },
                    child: Row(
                      children: [
                        Text("Next"),
                        Icon(Icons.arrow_forward),
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// That's it for today
// subscribe

//Like
// Share
// Comment

// 100DaysofFlutter

//   CodeWithNix

// 100DaysofCode
