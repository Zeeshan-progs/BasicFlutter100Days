import 'package:flutter/material.dart';
import 'package:flutter100days/Day%2017/helper/ui_helper.dart';

class ExplorecontentWidget extends StatelessWidget {
  final double currentExplorePercent;
  final placeName = const [
    'Authentic \n Resturent',
    'Famous  \n Monument',
    'Weekend \n Getaways'
  ];

  const ExplorecontentWidget({Key key, this.currentExplorePercent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (currentExplorePercent != 0) {
      return Positioned(
        top: realH(standardHeight +
            (162 - standardHeight) * currentExplorePercent),
        width: screenWidth,
        child: Container(
          height: screenHeight,
          child: ListView(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            children: [
              Opacity(
                opacity: currentExplorePercent,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Transform.translate(
                        offset: Offset(
                            screenWidth /
                                3 *
                                (1 - currentExplorePercent),
                            screenWidth /
                                3 /
                                2 *
                                (1 - currentExplorePercent)),
                        child: Image.asset(
                          'assets/googleMaps/icon_1.png',
                          width: realW(133),
                          height: realH(133),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Image.asset(
                        'assets/googleMaps/icon_2.png',
                        width: realW(133),
                        height: realH(133),
                      ),
                    ),
                    Expanded(
                      child: Transform.translate(
                        offset: Offset(
                            -screenWidth /
                                3 *
                                (1 - currentExplorePercent),
                            screenWidth /
                                3 /
                                2 *
                                (1 - currentExplorePercent)),
                        child: Image.asset(
                          'assets/googleMaps/icon_3.png',
                          height: realH(133),
                          width: realW(133),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Transform.translate(
                offset: Offset(
                    0, realH(23 + 380 * (1 - currentExplorePercent))),
                child: Opacity(
                  opacity: currentExplorePercent,
                  child: Container(
                    width: screenWidth,
                    height: realH(172 +
                        (172 * 4 * (1 - currentExplorePercent))),
                    child: ListView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                            padding:
                                EdgeInsets.only(left: realW(22))),
                        buildListItem(0, 'Authentic /n Resturent'),
                        buildListItem(1, 'Famous /n Monument'),
                        buildListItem(2, ' Weekend /n GetWays '),
                        buildListItem(3, 'Authentc /n Resturent'),
                        buildListItem(4, 'Weekend \n GetWay '),
                        buildListItem(5, 'Famous \n Monument '),
                      ],
                    ),
                  ),
                ),
              ),
              Transform.translate(
                  offset: Offset(0,
                      realH(58 + 570 * (1 - currentExplorePercent))),
                  child: Opacity(
                    opacity: currentExplorePercent,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: realW(22)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: realW(22)),
                            child: Text("EVENTS",
                                style: const TextStyle(
                                    color: Colors.white54,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Stack(
                            children: <Widget>[
                              Image.asset(
                                "assets/googleMaps/dj.png",
                              ),
                              Positioned(
                                  bottom: realH(26),
                                  left: realW(24),
                                  child: Text(
                                    "Marshmello Live in Concert",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: realW(16)),
                                  ))
                            ],
                          ),
                          Transform.translate(
                            offset: Offset(
                                0,
                                realH(30 -
                                    30 *
                                        (currentExplorePercent -
                                            0.75) *
                                        4)),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Image.asset(
                                      "assets/googleMaps/banner_4.png"),
                                ),
                                Expanded(
                                  child: Image.asset(
                                      "assets/googleMaps/banner_5.png"),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )),
              Padding(
                padding: EdgeInsets.only(bottom: realH(262)),
              )
            ],
          ),
        ),
      );
    } else {
      return const Padding(padding: const EdgeInsets.all(0));
    }
  }

  buildListItem(int index, String name) {
    return Transform.translate(
      offset:
          Offset(0, index * realH(127) * (1 - currentExplorePercent)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset(
            "banner_${index % 3 + 1}.png",
            width: realH(127),
            height: realH(127),
          ),
          Text(
            placeName[index % 3],
            style:
                TextStyle(color: Colors.white, fontSize: realH(16)),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
