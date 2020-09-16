import 'package:flutter/material.dart';


// Starbucks Animated App PreConfiguration styles 

class Drink {   // class sfor drinks and all specficatons of a drink
  String name;
  String conName;
  String backgroundImage;
  String imageTop;
  String imageSmall;
  String imageBlur;
  String cupImage;
  String description;
  Color lightColor;
  Color darkColor;
 // constructor
  Drink(
      this.name,
      this.conName,
      this.backgroundImage,
      this.imageTop,
      this.imageSmall,
      this.imageBlur,
      this.cupImage,
      this.description,
      this.lightColor,
      this.darkColor);
}


// Colors Schemes

Color myBrown = Color(0xFF81554E);
Color myBrownLight = Color(0xFFC09C88);
Color greenLight = Color(0xFFA3DB72);
Color greenDark = Color(0xFF497E19);
Color myAppGreen = Color(0xFF067655);
Color myToGreen = Color(0xFF033B2B); 



// Text Style and Specification 

class CustomText extends StatelessWidget {
  const CustomText({
     this.drink,
    this.color = Colors.white,
    this.size,
    this.fontWeight,
    this.label,
  });

  final Drink drink;
  final Color color;
  final double size;
  final FontWeight fontWeight;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        fontSize: size,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
