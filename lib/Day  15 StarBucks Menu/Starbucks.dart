import 'package:flutter/material.dart';

import 'StarBucksCard.dart';
import 'design.dart';

// main page of the App
// Lets Create one
class Starbucks extends StatefulWidget {
  @override
  _StarbucksState createState() => _StarbucksState();
}

class _StarbucksState extends State<Starbucks>
    with SingleTickerProviderStateMixin {
  PageController pageController;
  double pageOffset = 0;
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    controller = AnimationController(
        vsync: this,
        duration: Duration(
            milliseconds:
                800,)); 
                // you can set you own animation duration
    animation = CurvedAnimation(
        parent: controller,
        curve: Curves.easeOutBack); 
        // random aniimation my preference
    pageController = PageController(
        viewportFraction: .8);
         // random data you can set your own
    pageController.addListener(() {
      setState(() {
        pageOffset = pageController.page;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            buildToolbar(),
            buildLogo(size),
            buildPager(size),
            buildPageIndicator(),
          ],
        ),
      ),
    );
  }

  Widget buildToolbar() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0),
      child: Row(
        children: [
          SizedBox(width: 20.0),
          AnimatedBuilder(
            animation: animation,
            builder: (context, snapshot) {
              return Transform.translate(
                offset: Offset(-200 * (1 - animation.value), 0),
                child: Image.asset(
                  'assets/starbucks/location.png',
                  width: 30,
                  height: 30,
                ),
              );
            },
          ),
          Spacer(),
          AnimatedBuilder(
              animation: animation,
              builder: (context, snapshot) {
                return Transform.translate(
                  offset: Offset(200 * (1 - animation.value), 0),
                  child: Image.asset('assets/starbucks/drawer.png',
                      width: 30, height: 30),
                );
              }),
          SizedBox(width: 20),
        ],
      ),
    );
  }

  Widget buildLogo(Size size) {
    return Positioned(
      top: 10,
      right: size.width / 2 - 25,
      child: AnimatedBuilder(
        animation: animation,
        builder: (context, snapshot) {
          return Transform(
            transform: Matrix4.identity()
              ..translate(
                  0.0, size.height / 2 * (1 - animation.value))
              ..scale(1 + (1 - animation.value)),
            origin: Offset(25, 25),
            child: InkWell(
              onTap: () => controller.isCompleted
                  ? controller.reverse()
                  : controller.forward(),
              child: Image.asset(
                'assets/starbucks/logo.png',
                height: 50,
                width: 50,
              ),
            ),
          );
        },
      ),
    );
  }

  Widget buildPager(Size size) {
    return Container(
      margin: EdgeInsets.only(top: 70),
      height: size.height - 50,
      child: AnimatedBuilder(
        animation: animation,
        builder: (context, snapshot) {
          return Transform.translate(
            offset: Offset(400 * (1 - animation.value), 0),
            child: PageView.builder(
              controller: pageController,
              itemCount: getDrink().length,
              itemBuilder: (context, index) =>
                  StarbucksCard(getDrink()[index], pageOffset, index),
            ),
          );
        },
      ),
    );
  }

  List<Drink> getDrink() {
    List<Drink> list = [];
    list.add(Drink(
      'Tirami ',
      "su'",
      'assets/starbucks/blur_image.png',
      'assets/starbucks/bean_top.png',
      'assets/starbucks/bean_small.png',
      'assets/starbucks/bean_blur.png',
      'assets/starbucks/cup.png',
      'Then  top with wipped cream and mocha drizzle to bring you endless java Joy  \n :) :) :) :)',
      myBrownLight,
      myBrown,
    ));

    list.add(Drink(
      'Green',
      'Tea',
      'assets/starbucks/green_image.png',
      'assets/starbucks/green_top.png',
      'assets/starbucks/green_small.png',
      'assets/starbucks/green_blur.png',
      'assets/starbucks/green_tea_cup.png',
      'Milk and ice and Top of it with sweetend wipped cream to give you \n Deliciious boots \n of Energy  :) :)',
      greenLight,
      greenDark,
    ));

    list.add(Drink(
      'Triple',
      'Mocha',
      'assets/starbucks/mocha_image.png',
      'assets/starbucks/chocolate_top.png',
      'assets/starbucks/chocolate_small.png',
      'assets/starbucks/chocolate_blur.png',
      'assets/starbucks/mocha_cup.png',
      "Layer of wipped cream that's infused with cold brew, while chocolate mocha and \n drink caramel :) ",
      myBrownLight,
      myBrown,
    ));
    return list;
  }

  Widget buildPageIndicator() {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, snapshot) {
        return Positioned(
          bottom: 10,
          left: 10,
          child: Opacity(
            opacity: controller.value,
            child: Row(
              children: List.generate(
                getDrink().length,
                (index) => builderContainer(index),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget builderContainer(int index) {
    double animate = pageOffset - index;
    double size = 10;
    animate = animate.abs();
    Color color = Colors.grey;
    if (animate <= 1 && animate >= 0) {
      size = 10 + 10 * (1 - animate);
      color = ColorTween(begin: Colors.grey, end: myAppGreen)
          .transform(1 - animate);
    }

    return Container(
      margin: EdgeInsets.all(4),
      width: size,
      height: size,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(30)),
    );
  }
}
