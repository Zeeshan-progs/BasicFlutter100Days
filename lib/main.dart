import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter100days/Day%2017%20Clock/models/Theme_Togle.dart';
import 'package:provider/provider.dart';

import 'Day 17 Clock/Clock.dart';
import 'Day 17 Clock/Components/themes.dart';

void main() {
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyThemeModel(),
      child: Consumer<MyThemeModel>(
        builder: (context, theme, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: themeData(context),
          darkTheme: darkThemeData(context),
          themeMode:
              theme.isLightTheme ? ThemeMode.light : ThemeMode.dark,
          home: Clock(),
        ),
      ),
    );
  }
}
