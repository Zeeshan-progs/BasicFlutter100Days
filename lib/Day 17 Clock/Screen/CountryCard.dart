
import 'package:flutter/material.dart';
import 'package:flutter100days/Day%2017%20Clock/Components/Size.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CountryCard extends StatelessWidget {
  const CountryCard({
    Key key,
    @required this.country,
    @required this.imageSrc,
    @required this.time,
    @required this.timeZone,
    @required this.period,
  }) : super(key: key);

  final String country, imageSrc, time, timeZone, period;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(getProportionateScreenWidth(12)),
      width: getProportionateScreenWidth(230),
      decoration: BoxDecoration(
        border: Border.all(
            color: Theme.of(context).primaryIconTheme.color),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(country,
              style: Theme.of(context).textTheme.headline4.copyWith(
                    fontSize: getProportionateScreenWidth(18),
                  )),
          SizedBox(
            height: 5,
          ),
          Text(
            timeZone,
            style:
                TextStyle(fontSize: getProportionateScreenWidth(14)),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              SvgPicture.asset(
                imageSrc,
                width: getProportionateScreenWidth(40),
              ),
              Spacer(),
              Text(time,
                  style: Theme.of(context).textTheme.headline4),
              SizedBox(width: 5),
              RotatedBox(
                quarterTurns: 3,
                child: Text(period)
              ),
            ],
          )
        ],
      ),
    );
  }
}