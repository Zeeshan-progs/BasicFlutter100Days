import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

final standardWidth = 375.0;
final standardHeight = 815.0;

double screenWidth;
double screenHeight;

// Scale [Height]  by [Standard Height]

double realH(double height) {
  assert(screenHeight != 0);
  return height / standardHeight * screenHeight;
}

// Scale [ Width ]  by [Standard Width ]

double realW(double width) {
  assert(screenWidth != 0);
  return width / standardWidth * screenWidth;
}
