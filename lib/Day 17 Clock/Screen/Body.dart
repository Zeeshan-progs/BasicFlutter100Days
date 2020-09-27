import 'package:flutter/material.dart';
import 'package:flutter100days/Day%2017%20Clock/Components/constants.dart';

import 'AnalogClock/analog.dart';
import 'CountryCard.dart';
import 'Hours_And_Minute.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
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
            SizedBox(height: 20),
            CountryCard(
              country: "New York, USA",
              timeZone: "+3 HRS | EST",
              time: '9 : 20',
              imageSrc: 'assets/icons/Liberty.svg',
              period: "PM",
            ),
          ],
        ),
      ),
    );
  }
}