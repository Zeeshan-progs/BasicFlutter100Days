import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter100days/Day%2017/Components/Components.dart';
import 'package:flutter100days/Day%2017/helper/ui_helper.dart';

class GMapsPage extends StatefulWidget {
  @override
  _GMapsPageState createState() => _GMapsPageState();
}

class _GMapsPageState extends State<GMapsPage>
    with TickerProviderStateMixin {
  AnimationController animationControllerExplore;
  AnimationController animationControllerSearch;
  AnimationController animationControllerMenu;

  CurvedAnimation curve;

  Animation<double> animation;
  Animation<double> animationW;
  Animation<double> animationR;
  var offsetExplore = 0.0;
  var offsetSearch = 0.0;
  var offsetMenu = 0.0;

  bool isExploreOpen = false;
  bool isSearchOpen = false;
  bool isMenuOpen = false;

  get currentExplorePercent =>
      max(0.0, min(1.0, offsetExplore / (760 - 122)));

  get currentSearchPercent =>
      max(0.0, min(1.0, offsetSearch / (347 - 68)));

  get currentMenuPercent => max(0.0, min(1.0, offsetSearch / 358));

// search Drag Callback

  void onSearchHorizontalDragUpdate(details) {
    offsetSearch -= details.delta.dx;
    if (offsetSearch < 0) {
      offsetSearch = 0;
    } else if (offsetSearch > (347 - 68)) {
      offsetSearch = 347.0 - 68.0;
    }
    setState(() {});
  }

  // Explore Drag

  void onExploreVerticalUpdate(details) {
    offsetExplore -= details.dy;
    if (offsetExplore > 644) {
      offsetExplore = 644;
    } else if (offsetExplore < 0) {
      offsetExplore = 0;
    }

    setState(() {});
  }

// Animate Explore

  void animateExplore(bool open) {
    animationControllerExplore = AnimationController(
      duration: Duration(
          milliseconds: 1 +
              (800 *
                      (isExploreOpen
                          ? currentExplorePercent
                          : (1 - currentExplorePercent)))
                  .toInt()),
      vsync: this,
    );
    curve = CurvedAnimation(
        parent: animationControllerExplore, curve: Curves.ease);
    animation =
        Tween(begin: offsetExplore, end: open ? 760.0 - 122 : 0.0)
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
    animationControllerExplore.forward();
  }

// animate Search

  void animateSearch(bool open) {
    animationControllerSearch = AnimationController(
        duration: Duration(
            milliseconds: 1 +
                (800 *
                        (isSearchOpen
                            ? currentSearchPercent
                            : (1 - currentSearchPercent)))
                    .toInt()),
        vsync: this);

    curve = CurvedAnimation(
        parent: animationControllerSearch, curve: Curves.ease);
    animation = Tween(begin: offsetSearch, end: open ? 347.0 : 0.0)
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
          });

    animationControllerSearch.forward();
  }

  void animateMenu(bool open) {
    animationControllerMenu = AnimationController(
      duration: Duration(milliseconds: 500),
      vsync: this,
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
                if (status == AnimationStatus.completed) {
                  isSearchOpen = open;
                }
              });
    animationControllerMenu.forward();
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth > standardWidth) {
      screenWidth = standardWidth;
    }

    if (screenHeight > standardHeight) {
      screenHeight = standardHeight;
    }

    return Scaffold(
      body: Center(
        child: SizedBox(
          width: screenWidth,
          height: screenHeight,
          child: Stack(
            children: [
              Image.asset(
                'assets/googleMaps/map.png',
                height: screenHeight,
                width: screenWidth,
                fit: BoxFit.cover,
              ),
              ExploreWdget(
                currentExplorePercent: currentExplorePercent,
                currentSearchPercent: currentSearchPercent,
                animateExplore: animateExplore,
                isExploreOpen: isExploreOpen,
                onVerticalDragUpdate: onExploreVerticalUpdate,
                onPanDown: () => animationControllerExplore?.stop(),
              ),
              ExploreWdget(
                currentExplorePercent: currentExplorePercent,
              ),
              RecentSearchWidget(
                currnetSearchPercent: currentMenuPercent,
              ),
              offsetSearch != 0
                  ? Positioned(
                      bottom: realH(88),
                      left: realW((standardWidth - 320) / 2),
                      width: realW(320),
                      height: realH(135 * currentSearchPercent),
                      child: Opacity(
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(realW(33)),
                                topRight: Radius.circular(realW(33)),
                              ),
                            ),
                          ),
                          opacity: currentSearchPercent),
                    )
                  : const Padding(padding: EdgeInsets.all(0)),

              // Search Menu

              SearchMenuWidget(
                currentSearchPercent: currentSearchPercent,
              ),

              SearchWidget(
                currentExplorePercent: currentExplorePercent,
                currentSearchPercent: currentSearchPercent,
                animateSearch: animateSearch,
                isSearchOpen: isSearchOpen,
                onHorizontalDragUpdate: onSearchHorizontalDragUpdate,
                onPanDown: () => animationControllerSearch?.stop(),
              ),
              SearchBackWidget(
                currentSearchPercent: currentSearchPercent,
                animateSearch: animateSearch,
              ),

              MapButton(
                currentExplorePercent: currentExplorePercent,
                currentSearchPercent: currentSearchPercent,
                bottom: 243,
                offsetX: -71,
                width: 71,
                height: 71,
                isRight: false,
                icon: Icons.layers,
              ),
              MapButton(
                currentExplorePercent: currentExplorePercent,
                currentSearchPercent: currentSearchPercent,
                bottom: 243,
                offsetX: -68,
                width: 68,
                height: 71,
                iconColor: Colors.white,
                icon: Icons.directions,
                gradient: LinearGradient(colors: [
                  Color(0xff59c2ff),
                  Color(0xff1270e3),
                ]),
              ),

              MapButton(
                currentExplorePercent: currentExplorePercent,
                currentSearchPercent: currentSearchPercent,
                bottom: 148,
                offsetX: -68,
                width: 68,
                height: 71,
                icon: Icons.my_location,
                iconColor: Colors.blue,
              ),

              Positioned(
                bottom: realH(53),
                left: realW(-71 *
                    (currentExplorePercent + currentSearchPercent)),
                child: GestureDetector(
                  onTap: () {
                    animateMenu(true);
                  },
                  child: Opacity(
                    opacity: 1 -
                        (currentSearchPercent +
                            currentExplorePercent),
                    child: Container(
                      width: realW(71),
                      height: realH(71),
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: realW(17)),
                      child: Icon(
                        Icons.menu,
                        size: realW(34),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(realW(36)),
                            bottomRight: Radius.circular(realW(36))),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, .3),
                            blurRadius: realW(36),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              MenuWidget(
                currentMenuPercent: currentMenuPercent,
                animateMenu: animateMenu,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);
  }

  @override
  void dispose() {
    super.dispose();
    animationControllerExplore?.dispose();
    animationControllerSearch?.dispose();
    animationControllerMenu?.dispose();
  }
}
