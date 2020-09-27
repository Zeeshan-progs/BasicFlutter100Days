import 'package:flutter/material.dart';
import 'package:flutter100days/Day%2017%20Clock/Components/Size.dart';
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
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).primaryIconTheme.color,
          ),
          borderRadius: BorderRadius.circular(
            getProportionateScreenWidth(18),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New York | USA',
              style: Theme.of(context).textTheme.headline4.copyWith(
                  fontSize: getProportionateScreenWidth(18)),
            ),
            SizedBox(height: 5),
            Text('-4 GMT '),
            SizedBox(height: 5),
            Row(
              children: [
                SvgPicture.asset(
                  iconSrc,
                  width: getProportionateScreenWidth(42),
                  height: getProportionateScreenHeight(42),
                ),
                Text(time,style: Theme.of(context).textTheme.headline4,),
              ],
            )
          ],
        ),
      ),
    );
  }
}
