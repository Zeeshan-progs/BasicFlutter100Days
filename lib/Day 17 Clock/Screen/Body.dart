import 'package:flutter100days/Day 17 Clock/Export/export.dart';
import 'package:flutter100days/Day%2017%20Clock/Screen/TimeModes.dart/Analog/NumberPaint.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          mainScreenText(context),
          TimeInHourAndMinute(),
          Container(
            child: Stack(
              children: [
                AnalogClock(),
                AspectRatio(
                  aspectRatio: 1,
                  child: Positioned(
                    left: 0,
                    right: 0,
                    child: Container(
                      child: CustomPaint(
                        painter: NumberPaint(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 60),
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
          .copyWith(color: kBodyTextColorDark),
      textAlign: TextAlign.center,
    );
  }
}
