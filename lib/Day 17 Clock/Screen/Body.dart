import 'package:flutter/material.dart';
import 'package:flutter100days/Day%2017%20Clock/Components/constants.dart';

import 'Country Card/Country_Card_Call.dart';
import 'Country Card/analog.dart';
import 'TimeModes.dart/Hours_And_Minute.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            'Muzaffarpur, Bihar | INDIA  ',
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(color: kBodyTextColorDark),
            textAlign: TextAlign.center,
          ),
          TimeInHourAndMinute(),
          AnalogClock(),
          SizedBox(height: 60),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: CountryCardCall(),
          ),

        ],
      ),
    );
  }
}
