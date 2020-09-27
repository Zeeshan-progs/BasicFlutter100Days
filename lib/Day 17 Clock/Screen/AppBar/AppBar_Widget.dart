
import 'package:flutter/material.dart';
import 'package:flutter100days/Day%2017%20Clock/Components/Size.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddButton extends StatelessWidget {
  const AddButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin:
            EdgeInsets.all(getProportionateScreenWidth(10)),
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

class SettingIcon extends StatelessWidget {
  const SettingIcon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: SvgPicture.asset(
          'assets/icons/Settings.svg',
          color: Theme.of(context).iconTheme.color,
        ),
        onPressed: () {});
  }
}
