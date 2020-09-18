import 'package:flutter/material.dart';
import 'package:flutter100days/Day%2017/helper/ui_helper.dart';

class SearchBackWidget extends StatelessWidget {
  final double currentSearchPercent;
  final Function(bool) animateSearch;
  const SearchBackWidget(
      {Key key, this.currentSearchPercent, this.animateSearch})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: realH(320),
      right: realH(27),
      child: Opacity(
        opacity: currentSearchPercent,
        child: Container(
          width: realW(320),
          height: realH(71),
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: realW(17)),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  animateSearch(false);
                },
                child: Transform.scale(
                  scale: currentSearchPercent,
                  child: Icon(
                    Icons.arrow_back,
                    size: realW(34),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: realW(30)),
                  child: TextField(
                    enabled: currentSearchPercent == 1.0,
                    cursorColor: Color(0xff707070),
                    decoration: InputDecoration(
                      hintText: 'Search Here',
                      border: InputBorder.none,
                    ),
                    style: TextStyle(
                      fontSize: realW(22),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
