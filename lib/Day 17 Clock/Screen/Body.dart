import 'package:flutter100days/Day 17 Clock/Export/export.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          mainScreenText(context),
          TimeInHourAndMinute(),
          AnalogClock(),
          SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: CountryCardCall(),
          ),
        ],
      ),
    );
  }

  Text mainScreenText(BuildContext context) {
    return Text(
      'Muzaffarpur, Bihar | INDIA  ',
      style: Theme.of(context)
          .textTheme
          .headline5
          .copyWith(color: kBodyTextColorDark).copyWith(fontSize: 20),
      textAlign: TextAlign.center,
    );
  }
}
