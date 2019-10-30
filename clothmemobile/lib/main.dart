import 'package:clothme/scopedModel/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:redux/redux.dart'; // new
import 'package:flutter_redux/flutter_redux.dart';
import 'package:clothme/redux/reducer/AppReducer.dart';

import 'Theme/custom_theme.dart';
import 'Theme/themes.dart';
import 'UI/onboarding/OnBoarding.dart';
import 'UI/splash/splash.dart';
import 'redux/reducer/AppReducer.dart';
import 'redux/store/AppState.dart';

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
  // Store is just a class that holds your apps State tree.
  // AppState is something that we will (but haven't yet) established
  final store = new Store<AppState>(
    appReducer,
    initialState: new AppState(),
    middleware: [],
  );

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
    return new StoreProvider(
        store: store,
        child: MaterialApp(
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
        ));
  }
}
