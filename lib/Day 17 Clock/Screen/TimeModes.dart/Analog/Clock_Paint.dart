import 'dart:math';

import 'package:flutter/material.dart';

class ClockPainter extends CustomPainter {
  final BuildContext context;
  final DateTime dateTime;
  ClockPainter(this.context, this.dateTime);
  @override
  void paint(Canvas canvas, Size size) {
    double centerX = size.width / 2;
    double centerY = size.height / 2;
    Offset center = Offset(centerX, centerY);

    // Minutes Calculator

    double minuteX = centerX +
        size.width * .35 * cos((dateTime.minute * 6) * pi / 180);

    double minuteY = centerY +
        size.width * .35 * sin((dateTime.minute * 6) * pi / 180);
// minutes Line

    canvas.drawLine(
        center,
        Offset(minuteX, minuteY),
        Paint()
          ..color = Theme.of(context).accentColor
          ..style = PaintingStyle.stroke
          ..strokeWidth = 10);

    // Hour Calculation

    double hourX = centerX +
        size.width *
            .3 *
            cos((dateTime.hour * 30 + dateTime.minute * .5) *
                pi /
                180);

    double hourY = centerY +
        size.width *
            .3 *
            sin((dateTime.hour * 30 + dateTime.minute * .5) *
                pi /
                180);
// hour line

    canvas.drawLine(
        center,
        Offset(hourX, hourY),
        Paint()
          ..color = Theme.of(context).colorScheme.secondary
          ..style = PaintingStyle.stroke
          ..strokeWidth = 10);

// Second Calculation

    double secondX = centerX +
        size.width * .4 * cos((dateTime.second * 6) * pi / 180);

    double secondY = centerY +
        size.width * .4 * sin((dateTime.second * 6) * pi / 180);

// Second Line

    canvas.drawLine(center, Offset(secondX, secondY),
        Paint()..color = Theme.of(context).primaryColor);

// center Dot
    Paint dotPaint = Paint()
      ..color = Theme.of(context).primaryIconTheme.color;
    canvas.drawCircle(center, 24, dotPaint);
    canvas.drawCircle(center, 23,
        Paint()..color = Theme.of(context).backgroundColor);
    canvas.drawCircle(center, 10, dotPaint);
  }

  bool shouldRepaint(ClockPainter oldDelegate) {
    return true;
  }
}
