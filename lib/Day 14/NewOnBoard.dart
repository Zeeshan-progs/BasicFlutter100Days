import 'package:flutter/material.dart';

import 'Slide_Content.dart';

class CustomOnBoard extends StatefulWidget {
  @override
  _CustomOnBoardState createState() => _CustomOnBoardState();
}

class _CustomOnBoardState extends State<CustomOnBoard> {
// create a list of image and text
  int currentPage = 0;
  List<Map<String, String>> slideData = [
    {
      "image": "assets/board/intro.png",
      "text": "First Text Description",
    },
    {
      "image": "assets/board/find.png",
      "text": "Second Text Description",
    },
    {
      "image": "assets/board/success.png",
      "text": "Third Text Description",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                // use PageView for indexed content
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: slideData.length,
                  itemBuilder: (context, index) => SlideContent(
                    image: slideData[index]["image"],
                    text: slideData[index]["text"],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        slideData.length,
                        (index) => buildContainer(index),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: RaisedButton(
                        onPressed: () {},
                        child: Text(
                          'Continue',
                          style: TextStyle(
                            fontSize:20,
                            color: Colors.white,
                          ),
                        ),
                        color: Colors.deepPurple,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.all(7),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildContainer(int index) {
    return AnimatedContainer(
      margin: EdgeInsets.all(3),
      height: 3,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? Colors.deepPurple : Colors.grey,
        borderRadius: BorderRadius.circular(20),
      ),
      duration: Duration(
        milliseconds: 300,
      ),
    );
  }
}






// That's it for today 

// like 

// share


// subscribe




// Code With Nix 





// #100DaysOfCode
// #CodeWithNix


// #100daysFlutter




/// JAI    HIND   
