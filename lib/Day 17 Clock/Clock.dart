import 'package:flutter/material.dart';
import 'package:flutter100days/Day%2017%20Clock/Components/Size.dart';

import 'Screen/AppBar/AppBar_Widget.dart';
import 'Screen/Body.dart';

class Clock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        appBar: AppBar(
          leading: SettingIcon(),
          actions: [
            AddButton()
          ],
        ),
        body: Body());
  }
}
