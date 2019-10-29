import 'package:flutter/material.dart';

enum MyThemeKeys { LIGHT, DARK, DARKER }

class MyThemes {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: Colors.blue,
    brightness: Brightness.light,
    textTheme: TextTheme(
      headline: TextStyle(
      ),
      title: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 20.0,
          color: Colors.black54,
          fontFamily: "Roboto"
      ),
      body1: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16.0
      ),
      body2: TextStyle(),
      subhead: TextStyle(),
      display1: TextStyle(),
      display2: TextStyle(),
      display3: TextStyle(),
      display4: TextStyle(),
      button: TextStyle(),
      subtitle: TextStyle(),
      caption: TextStyle()
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    primaryColor: Colors.grey,
    brightness: Brightness.dark,
    textTheme: TextTheme(
      headline: TextStyle(
      ),
      title: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 20.0,
          color: Colors.black54,
          fontFamily: "Roboto"
      ),
      body1: TextStyle(
      ),
      body2: TextStyle(),
      subhead: TextStyle(),
      display1: TextStyle(),
      display2: TextStyle(),
      display3: TextStyle(),
      display4: TextStyle(),
      button: TextStyle(),
      subtitle: TextStyle(),
      caption: TextStyle(),
    ),
  );

  static final ThemeData darkerTheme = ThemeData(
    primaryColor: Colors.black,
    brightness: Brightness.dark,
    textTheme: TextTheme(
      headline: TextStyle(
      ),
      title: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 20.0,
          color: Colors.black54,
          fontFamily: "Roboto"
      ),
      body1: TextStyle(
      ),
      body2: TextStyle(),
      subhead: TextStyle(),
      display1: TextStyle(),
      display2: TextStyle(),
      display3: TextStyle(),
      display4: TextStyle(),
      button: TextStyle(),
      subtitle: TextStyle(),
      caption: TextStyle()
    ),
  );

  static ThemeData getThemeFromKey(MyThemeKeys themeKey) {
    switch (themeKey) {
      case MyThemeKeys.LIGHT:
        return lightTheme;
      case MyThemeKeys.DARK:
        return darkTheme;
      case MyThemeKeys.DARKER:
        return darkerTheme;
      default:
        return lightTheme;
    }
  }
}