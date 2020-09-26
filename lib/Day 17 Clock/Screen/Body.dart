import 'package:flutter/material.dart';
import 'package:flutter100days/Day%2017%20Clock/Components/Size.dart';

import 'AnalogClock/analog.dart';
import 'Hours_And_Minute.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: ListView(
        children: [
          Text(' Muzaffarpur, Bihar | INDIA | PST',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText1),
          TimeInHourAndMinute(),
          AnalogClock(),
         Container(
          //  width: getProportionateScreenWidth(50),
          width: 40,
           color: Colors.blue,
           height: 23,
         ),
        ],
      ),
    );
  }
}
