
import 'package:flutter/material.dart';

class SlideContent extends StatelessWidget {
  final String image, text;
  const SlideContent({this.image, this.text});
// create to address image and text of each slide
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'Code With Nix',
          style: TextStyle(
            fontSize: 38,
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple,
          ),
        ),
        Image.asset(
          image,
          height: 380,
          width: 400,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 17),
        ),
      ],
    );
  }
}
