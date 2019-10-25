import 'package:flutter/material.dart';

class NameLogoWidget extends StatelessWidget {
  final String name;
  final Image image;

  const NameLogoWidget({Key key, this.name, this.image}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
//                                    Image(
//                                      image: AssetImage("assets/img/Logo.png"),
//                                      height: 70.0,
//                                    ),
        Padding(padding: EdgeInsets.symmetric(horizontal: 0.0)),
        /// Animation tag is signUp_tag accept from login layout
        Hero(
          tag: "Treva",
          child: Text(
            name,
            style: TextStyle(
                fontWeight: FontWeight.w900,
                letterSpacing: 0.6,
                fontFamily: "Sans",
                color: Colors.white,
                fontSize: 26.0),
          ),
        ),
      ],
    );
  }
}
