import 'package:clothme/UI/brand/favouriteBrand.dart';
import 'package:clothme/UI/cart/CartLayout.dart';
import 'package:clothme/UI/fit/FitHome.dart';
import 'package:clothme/UI/market_place/MarketPlaceView.dart';
import 'package:clothme/UI/profile/Profiled.dart';
import 'package:clothme/UI/signup/Signup.dart';
import 'package:clothme/UI/splash/splash.dart';
import 'package:flutter/material.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => FitHome());
      case 'fit':
        return MaterialPageRoute(builder: (_) => FitHome());
      case 'signup':
        return MaterialPageRoute(builder: (_) => SignUp());
      case 'discover':
      //        return MaterialPageRoute(builder: (_) => ());
      case 'brand':
        return MaterialPageRoute(builder: (_) => FavouriteBrand());
      case 'profile':
        return MaterialPageRoute(builder: (_) => ProfileView());
      case 'marketplace':
        return MaterialPageRoute(builder: (_) => MarketPlaceView());
      case 'splashScreen':
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case 'cart':
        return MaterialPageRoute(builder: (_) => cart());
      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          );
        });
    }
  }
}