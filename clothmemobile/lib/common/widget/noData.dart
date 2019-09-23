import 'package:flutter/material.dart';

class NoData extends StatelessWidget {

  final String textMessage;
  final String image;

  NoData({Key key, this.textMessage, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Image.asset(image),
            Text(textMessage)
          ],
        )
      )
    );
  }
}