import 'dart:async';
import 'package:clothme/UI/splash/widget/welcome_message.dart';
import 'package:flutter/material.dart';


/// Stateful UI
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

/// State UI
class _SplashScreenState extends State<SplashScreen> {
  /// Setting duration in splash screen
  startTime() async {
    return new Timer(Duration(milliseconds: 4500), navigatorPage);
  }

  /// To navigate layout change
  void navigatorPage() {
    Navigator.of(context).pushReplacementNamed("login");
  }

  /// Declare startTime to InitState
  @override
  void initState() {
    super.initState();
    startTime();
  }

  /// Code Create UI Splash Screen
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Container(
            /// Set Background image in splash screen layout (Click to open code)
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/img/man.png'), fit: BoxFit.cover)),
            child: Container(
              /// Set gradient black in image splash screen (Click to open code)
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(0, 0, 0, 0.3),
                        Color.fromRGBO(0, 0, 0, 0.4)
                      ],
                      begin: FractionalOffset.topCenter,
                      end: FractionalOffset.bottomCenter)),
              child: Center(
                child: SingleChildScrollView(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 30.0),
                        ),
                        /// Animation text ClothME to choose Login with Hero Animation (Click to open code)
                        const WelcomeMessageWidget(welcomeText: "Welocime to", brandName: "Clothme")
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
