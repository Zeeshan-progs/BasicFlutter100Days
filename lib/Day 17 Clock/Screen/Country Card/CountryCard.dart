import 'package:flutter/material.dart';
import 'package:flutter100days/Day%2017%20Clock/Components/Size.dart';
import 'package:flutter100days/Day%2017%20Clock/Components/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CountryCard extends StatelessWidget {
  final String time, timeZone, period, country, iconSrc;

  const CountryCard(
      {Key key,
      @required this.time,
      @required this.timeZone,
      @required this.period,
      @required this.country,
      @required this.iconSrc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(14)),
      child: Container(
        width: getProportionateScreenWidth(230),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          border: Border.all(
            color: Theme.of(context).primaryIconTheme.color,
          ),
          borderRadius: BorderRadius.circular(
            getProportionateScreenWidth(18),
          ),
          boxShadow: [
            BoxShadow(
              color: kShadowColor.withOpacity(.12),
              blurRadius: 20,
              offset: Offset(0, 0)
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'New York | USA',
              style: Theme.of(context).textTheme.headline4.copyWith(
                  fontSize: getProportionateScreenWidth(18)),
            ),
            SizedBox(height: 5),
            Text(timeZone),
            SizedBox(height: 5),
            Row(
              children: [
                SvgPicture.asset(
                  iconSrc,
                  color: Theme.of(context).colorScheme.secondary,
                  width: getProportionateScreenWidth(72),
                  height: getProportionateScreenHeight(72),
                ),
                Spacer(),
                Text(time,
                    style: Theme.of(context).textTheme.headline4),
                SizedBox(width: 10),
                RotatedBox(
                  quarterTurns: 3,
                  child: Text(period),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}