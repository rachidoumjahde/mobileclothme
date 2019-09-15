import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:treva_shop_flutter/UI/onboarding/OnBoarding.dart';
import 'package:redux/redux.dart'; // new
import 'package:flutter_redux/flutter_redux.dart';
import 'package:treva_shop_flutter/reduxStore/store/AppState.dart';
import 'package:treva_shop_flutter/reduxStore/reducer/AppReducer.dart';

import 'UI/splash/splash.dart';


/// Run first apps open
void main() => runApp(MyApp());

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
