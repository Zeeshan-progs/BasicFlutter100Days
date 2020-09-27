
import 'package:flutter/material.dart';

import 'CountryCard.dart';

class CountryCardCall extends StatelessWidget {
  const CountryCardCall({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CountryCard(
          country: "New York, USA",
          timeZone: "+3 HRS | EST",
          time: '9 : 20',
          iconSrc: 'assets/icons/Liberty.svg',
          period: "PM",
         ),
        CountryCard(
          country: "Sydney",
         timeZone: "+10 HRS | GMT",
          time: '11 : 20',
          iconSrc: 'assets/icons/Sydney.svg',
          period: "PM",
        ),
      ],
    );
  }
}
