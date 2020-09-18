import 'package:flutter/material.dart';
import 'package:flutter100days/Day%2017/helper/ui_helper.dart';

class SearchWidget extends StatelessWidget {
  final double currentExplorePercent;
  final double currentSearchPercent;
  final Function(bool) animateSearch;
  final bool isSearchOpen;
  final Function(DragUpdateDetails) onHorizontalUpdate;
  final Function() onPanDown;

  const SearchWidget(
      this.currentExplorePercent,
      this.currentSearchPercent,
      this.animateSearch,
      this.isSearchOpen,
      this.onHorizontalUpdate,
      this.onPanDown);
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: realW(53),
      right: realW(68.0 - 320) -
          (68 * currentExplorePercent) +
          (347 - 68) * currentSearchPercent,
      child: GestureDetector(
        onTap: () {
          animateSearch(!isSearchOpen);
        },
        onPanDown: (_) => onPanDown,
        onHorizontalDragUpdate: onHorizontalUpdate,
        onHorizontalDragEnd: (_) => _dispatchSearchOffset(),
        child: Container(
          width: realW(320),
          height: realH(71),
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: realW(17)),
          child: Opacity(
            opacity: 1.0 - currentSearchPercent,
            child: Icon(
              Icons.search,
              size: realW(34),
            ),
          ),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius:
                  BorderRadius.all(Radius.circular(realW(36))),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  blurRadius: realW(36),
                )
              ]),
        ),
      ),
    );
  }

  void _dispatchSearchOffset() {
    if (!isSearchOpen) {
      if (currentSearchPercent < .3) {
        animateSearch(false);
      } else {
        animateSearch(true);
      }
    } else {
      if (currentSearchPercent > .6) {
        animateSearch(true);
      } else {
        animateSearch(false);
      }
    }
  }
}
