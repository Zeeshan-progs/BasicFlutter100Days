import 'package:flutter/material.dart';
import 'package:flutter100days/Day%2017%20Clock/Components/Size.dart';

class CounteryCard extends StatelessWidget {
  final Color color;

  const CounteryCard({Key key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal:getProportionateScreenWidth(14)),
      child: Container(
        color: color,
        child: Text("This"),
      ),
    );
  }
}
