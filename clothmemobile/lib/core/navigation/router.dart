import 'package:clothme/UI/fit/FitHome.dart';
import 'package:clothme/UI/signup/Signup.dart';
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
      case 'Search':
//        return MaterialPageRoute(builder: (_) => Pro());
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