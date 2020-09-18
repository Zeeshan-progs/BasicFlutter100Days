import 'dart:math';

import 'package:flutter/material.dart';

import 'helper/ui_helper.dart';

class GmapsHome extends StatefulWidget {
  GmapsHome();
  @override
  _GmapsHomeState createState() => _GmapsHomeState();
}

class _GmapsHomeState extends State<GmapsHome>
    with TickerProviderStateMixin {
  AnimationController animationControllerexplore;
  AnimationController animatonControllerSearch;
  AnimationController animationControllerMenu;
  CurvedAnimation curve;
  Animation<double> animation;
  Animation<double> animationW;
  Animation<double> animatonR;

  get currentExplorePercent =>
      max(0.0, min(1.0, offsetExplore / (700.0 - 122.0)));
  get currentSearchPercent =>
      max(0.0, min(1.0, offsetSearch / (347 - 68.0)));
  get currentMenuPercent => max(0.0, min(1.0, offsetMenu / 358));

  var offSetExplore = 0.0;
  var offsetSearch = 0.0;
  var ofsetMenu = 0.0;

  bool isExploreOpen = false;
  bool isSearchOpen = false;
  bool isMenuOpen = false;

// search drag callback

  void onSearchHorizontalDragUpdate(details) {
    offsetSearch -= details.delta.dx;
    if (offsetSearch < 0) {
      offsetSearch = 0;
    } else if (offsetSearch > (347 - 68.0)) {
      offsetSearch = 347 - 68.0;
    }
    setState(() {});
  }

  // Explore drag callback

  void onExploreVerticalUpdate(details) {
    offSetExplore -= details.delta.dy;
    if (offSetExplore > 644) {
      offSetExplore = 644;
    } else if (offSetExplore < 0) {
      offSetExplore = 0;
    }
    setState(() {});
  }

// animaton  Explore
  void animationExplore(bool open) {
    animationControllerExplore = AnimationController(
      vsync: this,
      duration: Duration(
          milliseconds: 1 +
              (800 *
                      (isExploreOpen
                          ? currentExplorePercent
                          : (1 - currentExplorePercent)))
                  .toInt()),
    );
    curve = CurvedAnimation(
        parent: animationControllerExplore, curve: Curves.ease);
    animation =
        Tween(begin: offSetExplore, end: open ? 760.0 - 122 : 0.0)
            .animate(curve)
              ..addListener(() {
                setState(() {
                  offsetExplore = animation.value;
                });
              })
              ..addStatusListener((status) {
                if (status == AnimationStatus.completed) {
                  isExploreOpen = open;
                }
              });
    animationControllerexplore.forward();
  }

  void animateSearch(bool open) {
    animatonControllerSearch = AnimationController(
        duration: Duration(
            milliseconds: 1 +
                (800 *
                    (isSearchOpen
                        ? currentExplorePercent
                        : (1 - currentSearchPercent)))),
        vsync: this);
    curve = CurvedAnimation(
        parent: animatonControllerSearch, curve: Curves.ease);
    animation =
        Tween(begin: offsetSearch, end: open ? 347 - 68.0 : 0.0)
            .animate(curve)
              ..addListener(() {
                setState(() {
                  offsetSearch = animation.value;
                });
              })
              ..addStatusListener((status) {
                if (status == AnimationStatus.completed) {
                  isSearchOpen = open;
                }
                animatonControllerSearch.forward();
              });
  }

  void animateMenu(bool open) {
    animationControllerMenu = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    curve = CurvedAnimation(
        parent: animationControllerMenu, curve: Curves.ease);
    animation =
        Tween(begin: open ? 0.0 : 358.0, end: open ? 358.0 : 0.0)
            .animate(curve)
              ..addListener(() {
                setState(() {
                  offsetMenu = animation.value;
                });
              })
              ..addStatusListener((status) {
                animationControllerMenu.forward();
              });
  }

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    if (screenWidth > stadardWidth) {
      screenWidth = standerdWidth;
    } else if (screenHeight > standardHeight) {
      screenHeight = standardHeight;
    }
    return Scaffold(

    );
  }
}
