
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter100days/Day%2017%20Clock/Components/Size.dart';

class TimeInHourAndMinute extends StatefulWidget {
  @override
  _TimeInHourAndMinuteState createState() => _TimeInHourAndMinuteState();
}

class _TimeInHourAndMinuteState extends State<TimeInHourAndMinute> {
  TimeOfDay _timeOfDay = TimeOfDay.now();

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (_timeOfDay.minute != TimeOfDay.now().minute) {
        setState(() {
          _timeOfDay = TimeOfDay.now();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    String _priod = _timeOfDay.period == DayPeriod.am ? 'AM' : 'PM';
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "${_timeOfDay.hourOfPeriod} : ${_timeOfDay.minute}",
          style: Theme.of(context).textTheme.headline1,
        ),
        RotatedBox(
          quarterTurns: 3,
                  child: Text(
            _priod,
            style: TextStyle(fontSize: getProportionateScreenWidth(23)),
          ),
        ),
      ],
    );
  }
}
