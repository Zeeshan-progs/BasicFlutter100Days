import 'dart:async';
import 'dart:math';

import 'package:flutter100days/Day%2017%20Clock/Export/export.dart';
import 'package:flutter100days/Day%2017%20Clock/Screen/TimeModes.dart/Analog/NumberPaint.dart';

class AnalogClock extends StatefulWidget {
  @override
  _AnalogClockState createState() => _AnalogClockState();
}

class _AnalogClockState extends State<AnalogClock> {
  DateTime _dateTime = DateTime.now();

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _dateTime = DateTime.now();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(15)),
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 0),
                  color: kShadowColor.withOpacity(0.15),
                  blurRadius: 64,
                ),
              ],
            ),
            child: Transform.rotate(
              angle: -pi / 2,
              child: CustomPaint(
                size: Size(300, 300),
                painter: ClockPainter(context, _dateTime),
              ),
            ),
          ),
        ),
        Center(
          child: CustomPaint(
            size: Size(300, 300),
            painter: NumberPaint(),
          ),
        ),
        Positioned(
          top: 50,
          left: 0,
          right: 0,
          child: Consumer<MyThemeModel>(
            builder: (context, theme, child) => GestureDetector(
              onTap: () => theme.changeTheme(),
              child: SvgPicture.asset(
                theme.isLightTheme
                    ? 'assets/icons/Moon.svg'
                    : 'assets/icons/Sun.svg',
                height: getProportionateScreenHeight(28),
                width: getProportionateScreenWidth(28),
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
