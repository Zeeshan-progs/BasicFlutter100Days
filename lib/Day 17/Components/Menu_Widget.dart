import 'package:flutter/material.dart';
import 'package:flutter100days/Day%2017/helper/ui_helper.dart';

class MenuWidget extends StatelessWidget {
  final menuItem = [
    'Home',
    'Saved',
    'TimeLIne',
    'Contributions',
    ' Message',
    'Sharing',
    ' Drive Mode',
  ];

  final num currentMenuPercent;
  final Function(bool) animateMenu;

  MenuWidget({Key key, this.currentMenuPercent, this.animateMenu})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return currentMenuPercent != 0
        ? Positioned(
            left: realH(-358 + 358 * currentMenuPercent),
            width: realW(358),
            height: screenHeight,
            child: Opacity(
              opacity: currentMenuPercent,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(
                      realW(50),
                    ),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, .16),
                      blurRadius: realW(20),
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    NotificationListener<
                        OverscrollIndicatorNotification>(
                      onNotification: (notification) {
                        notification.disallowGlow();
                      },
                      child: CustomScrollView(
                        physics: NeverScrollableScrollPhysics(),
                        slivers: [
                          SliverToBoxAdapter(
                            child: Container(
                              height: realH(236),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight:
                                        Radius.circular(realW(50))),
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xFF59C2FF),
                                    Color(0xFF1270E3),
                                  ],
                                  begin: Alignment.topLeft,
                                ),
                              ),
                              child: Stack(
                                children: [
                                  avatarImage(),
                                  lableImage(),
                                  Positioned(
                                    left: realW(135),
                                    top: realH(110),
                                    child: DefaultTextStyle(
                                      style: TextStyle(
                                          color: Colors.white),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'implemented by ditclear',
                                            style: TextStyle(
                                                fontWeight:
                                                    FontWeight.bold,
                                                fontSize: realW(18)),
                                          ),
                                          linkText(),
                                          ditclearWithIcon(),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SliverPadding(
                            padding: EdgeInsets.only(
                              top: realH(34),
                              bottom: realH(50),
                              right: realW(37),
                            ),
                            sliver: SliverFixedExtentList(
                              itemExtent: realH(56),
                              delegate: SliverChildBuilderDelegate(
                                  (BuildContext context, int index) {
                                return Container(
                                  width: realW(321),
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.only(
                                      left: realW(20)),
                                  decoration: index == 0
                                      ? BoxDecoration(
                                          color: Color(0xFF379BF2)
                                              .withOpacity(.2),
                                          borderRadius:
                                              BorderRadius.only(
                                            topRight: Radius.circular(
                                                realW(50)),
                                            bottomRight:
                                                Radius.circular(
                                                    realW(50)),
                                          ),
                                        )
                                      : null,
                                  child: Text(
                                    menuItem[index],
                                    style: TextStyle(
                                        color: index == 0
                                            ? Colors.blue
                                            : Colors.black,
                                        fontSize: realW(20)),
                                  ),
                                );
                              }, childCount: menuItem.length),
                            ),
                          ),
                          SliverPadding(
                            padding: EdgeInsets.only(left: realW(20)),
                            sliver: SliverToBoxAdapter(
                              child: Text(
                                'Setting',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: realW(20)),
                              ),
                            ),
                          ),
                          closeIcon(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        : const Padding(padding: EdgeInsets.all(0));
  }

  Positioned closeIcon() {
    return Positioned(
      bottom: realH(53),
      right: 0,
      child: GestureDetector(
        onTap: () => animateMenu(false),
        child: Container(
          width: realW(71),
          height: realH(71),
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: realW(17)),
          child: Icon(
            Icons.close,
            size: realW(34),
            color: Color(0xFF96977),
          ),
          decoration: BoxDecoration(
            color: Color(0xFFFB5E74).withOpacity(.2),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(realW(36)),
              bottomLeft: Radius.circular(
                realW(36),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Padding linkText() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: realW(11)),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text.rich(
          TextSpan(
            text: 'https://github.com/ditclear',
            style: TextStyle(
                fontSize: realW(16),
                decoration: TextDecoration.underline),
          ),
        ),
      ),
    );
  }

  Row ditclearWithIcon() {
    return Row(
      children: [
        Text(
          'Ditclear',
          style: TextStyle(fontSize: realW(14)),
        ),
        Icon(
          Icons.arrow_right,
          color: Colors.white,
          size: realH(30),
        ),
      ],
    );
  }

  Positioned lableImage() {
    return Positioned(
      child: Image.asset(
        'assets/googleMaps/lable.png',
        width: realW(72),
        height: realH(72),
      ),
      left: realW(72),
      bottom: realH(72),
    );
  }

  Positioned avatarImage() {
    return Positioned(
      child: Image.asset(
        'assets/googleMaps/avatar.png',
        width: realW(120),
        height: realH(120),
      ),
      left: realW(10),
      bottom: realH(27),
    );
  }
}
