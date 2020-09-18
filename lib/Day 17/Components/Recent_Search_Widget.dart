import 'package:flutter/material.dart';
import 'package:flutter100days/Day%2017/helper/ui_helper.dart';

class RecentSearchWidget extends StatelessWidget {
  final double currnetSearchPercent;

  const RecentSearchWidget({Key key, this.currnetSearchPercent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return currnetSearchPercent != 0
        ? Positioned(
            top: realH(
                -(75 + 494) + (75 + 75 + 494) * currnetSearchPercent),
            left: realW((standardWidth - 320) / 2),
            width: realW(320),
            height: realH(494),
            child: Opacity(
              opacity: currnetSearchPercent,
              child: Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  'assets/googleMaps/recent.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          )
        : const Padding(padding: EdgeInsets.all(0));
  }
}
