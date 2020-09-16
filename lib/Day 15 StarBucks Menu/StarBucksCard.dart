import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'design.dart';

// animations and designs colabrations page
class StarbucksCard extends StatelessWidget {
  Drink drink;
  double pageOffset;
  double animation;
  double animate = 0;
  double rotate = 0;
  double columnAnimation = 0;
  int index;

  StarbucksCard(this.drink, this.pageOffset, this.index);

  @override
  Widget build(BuildContext context) {
    // screen resolution size
    Size size = MediaQuery.of(context).size;
    double cardWidth = size.width - 60;
    double cardHeight = size.height * .55;
    double count = 0;
    double page;
    rotate = index - pageOffset;
    for (page = pageOffset; page > 1;) {
      page--;
      count++;
    }
    // Animation
    animation = Curves.easeOutBack.transform(page);
    animate = 100 * (count + animation);
    columnAnimation = 50 * (count + animation);
    for (int i = 0; i < index; i++) {
      animate -= 100;
      columnAnimation -= 50;
    }
    return Container(
      child: Stack(
        overflow: Overflow.visible,
        children: [
          // Main Containt merge
          buildTopText(), // Name of Drink
          buildBackgroundImage(cardWidth, cardHeight, size),
          // size of cards by drink
          builldAboveCard(cardWidth, cardHeight, size),
          buildCupImage(size),
          buildBlurImage(cardWidth, size),
          buildSmallImage(size),
          buildTopImage(cardWidth, size, cardHeight),
        ],
      ),
    );
  }

  Widget buildTopText() {
    return Padding(
      padding: EdgeInsets.only(top: 30.0),
      child: Row(
        children: [
          SizedBox(width: 20),
          CustomText(
            // custom widget
            label: drink.name,
            size: 50,
            fontWeight: FontWeight.bold,
            color: drink.lightColor,
          ),
          CustomText(
            label: drink.conName,
            size: 50,
            color: drink.darkColor,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }

  Widget buildBackgroundImage(
      // background Image of specific dink
      double cardWidth,
      double cardHeight,
      Size size) {
    return Positioned(
      width: cardWidth,
      height: cardHeight,
      bottom: size.width * .28,      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25.0),
          child: Image.asset(
            drink.backgroundImage, // image
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget builldAboveCard(
      double cardWidh, double cardHeight, Size size) {
    return Positioned(
      width: cardWidh,
      height: cardHeight,
      bottom: size.width * .28,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
          color: drink.darkColor.withOpacity(.50),
          borderRadius: BorderRadius.circular(25),
        ),
        padding: EdgeInsets.all(30),
        child: Transform.translate(
          offset: Offset(-columnAnimation, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                label: 'Frappuccino', // Drink name
                size: 35,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 10),
              CustomText(
                label: drink.description,
                // drink specification
                size: 18,
                color: Colors.white70,
              ),
              Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(width: 5),
                  Image.asset('assets/starbucks/cup_L.png'),
                  //  3 cups in card
                  SizedBox(width: 5),
                  Image.asset('assets/starbucks/cup_M.png'),
                  SizedBox(width: 5),
                  Image.asset('assets/starbucks/cup_s.png'),
                ],
              ),
              SizedBox(height: 15),
              // MRP Card
              Container(
                height: 40,
                decoration: BoxDecoration(
                  color: myAppGreen,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(width: 20),
                      RichText(
                        // Text Design using RichText
                        text: TextSpan(
                          text: '\$',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                          children: [
                            TextSpan(
                              text: '  4.',
                              style: TextStyle(
                                fontSize: 19,
                                color: Colors.white,
                              ),
                            ),
                            TextSpan(
                              text: '70',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCupImage(Size size) {
    return Positioned(
      bottom: 20,
      right: -size.width * .2 / 2 + 30,
      child: Transform.rotate(
        angle: -math.pi / 14 * rotate,
        child: Image.asset(
          drink.cupImage, // cup image
          height: size.height * .55 - 15,
        ),
      ),
    );
  }

  Widget buildBlurImage(double cardWidth, Size size) {
    return Positioned(
      right: cardWidth / 2 - 60 + animate,
      bottom: size.height * .10,
      child: Image.asset(
        drink.imageBlur,
      ),
      // background of cup the blur one
    );
  }

  Widget buildSmallImage(Size size) {
    return Positioned(
      right: -10 + animate,
      top: size.height * .3,
      child: Image.asset(drink.imageSmall),
    );
  }

  Widget buildTopImage(
      double cardWidth, Size size, double cardHeight) {
    return Positioned(
      left: cardWidth / 4 - animate,
      bottom: size.height * .15 + cardHeight - 25,
      child: Image.asset(drink.imageTop),
    );
  }
}
