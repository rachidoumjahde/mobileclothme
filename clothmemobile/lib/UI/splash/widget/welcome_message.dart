import 'package:flutter/material.dart';

class WelcomeMessage extends StatelessWidget {
  final welcomeText;
  final brandName;
  const WelcomeMessage({Key key, this.welcomeText, this.brandName}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          welcomeText,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w200,
            fontFamily: "Sans",
            fontSize: 19.0,
          ),
        ),
        Hero(
          tag: "login_tag",
          child: Text(
            brandName,
            style: TextStyle(
              fontFamily: 'Sans',
              fontWeight: FontWeight.w900,
              fontSize: 35.0,
              letterSpacing: 0.4,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
