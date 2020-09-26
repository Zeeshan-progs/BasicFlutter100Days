import 'package:flutter/material.dart';
import 'package:flutter100days/Day%2017%20Clock/Components/Size.dart';
import 'package:flutter_svg/svg.dart';

import 'Screen/Body.dart';

class Clock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body()
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
          icon: SvgPicture.asset(
            'assets/icons/Settings.svg',
            color: Theme.of(context).iconTheme.color,
          ),
          onPressed: () {}),
      actions: [
        buildAddButton(context),
      ],
    );
  }

  InkWell buildAddButton(BuildContext context) {
    return InkWell(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.all(getProportionateScreenWidth(10)),
            width: getProportionateScreenWidth(32),
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              shape: BoxShape.circle,
            ),
          ),
        );
  }
}
