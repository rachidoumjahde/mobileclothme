import 'package:clothme/core/provider_state/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Theme/custom_theme.dart';
import 'Theme/themes.dart';
import 'UI/onboarding/OnBoarding.dart';
import 'UI/splash/splash.dart';

/// Run first apps wrapped in CustomTheme
void main() {
  setupLocator();
  runApp(CustomTheme(
    initialThemeKey: MyThemeKeys.LIGHT,
    child: MyApp(),
  ));
}

/// Set orientation
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /// To set orientation always portrait
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    /// Set color status bar
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent, //or set color with: Color(0xFF0000FF)
    ));
    return MaterialApp(
          title: "ClothME",
          //theme: CustomTheme.of(context),
          theme: ThemeData(
              brightness: Brightness.light,
              backgroundColor: Colors.white,
              primaryColorLight: Colors.white,
              primaryColorBrightness: Brightness.light,
              primaryColor: Colors.white),
          debugShowCheckedModeBanner: false,
          home: SplashScreen(),

          /// Move splash screen to ChoseLogin Layout
          /// Routes
          routes: <String, WidgetBuilder>{
            "login": (BuildContext context) => OnBoarding(),
          },
        );
  }
}
