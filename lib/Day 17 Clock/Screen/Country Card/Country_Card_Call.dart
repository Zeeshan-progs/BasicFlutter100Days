
import 'package:flutter100days/Day 17 Clock/Export/export.dart';

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
          country: "Sydney | Australia",
         timeZone: "+10 HRS | GMT",
          time: '11 : 20',
          iconSrc: 'assets/icons/Sydney.svg',
          period: "PM",
        ),
      ],
    );
  }
}
