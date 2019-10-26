import 'package:flutter/material.dart';

///ButtonBlack class
class BlackButton extends StatelessWidget {
  final name;
  final fontSize;
  final width;
  final radius;
  BlackButton({Key key, this.name, this.fontSize, this.width, this.radius}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      borderRadius: BorderRadius.circular(radius),
      color: Colors.black,
      elevation: 3.0,
      child: RaisedButton(
        child: Text(name),
        onPressed: (){},
      ),
    );
  }
}

/*
Padding(
      padding: EdgeInsets.all(30.0),
      child: Container(
        height: 55.0,
        width: width,
        child: Text(
          name,
          style: TextStyle(
              color: Colors.white,
              letterSpacing: 0.2,
              fontFamily: "Sans",
              fontSize: fontSize,
              fontWeight: FontWeight.w800),
        ),
        alignment: FractionalOffset.center,
        decoration: BoxDecoration(
            boxShadow: [BoxShadow(color: Colors.black38, blurRadius: 15.0)],
            borderRadius: BorderRadius.circular(30.0),
            gradient: LinearGradient(
                colors: <Color>[Color(0xFF121940), Color(0xFF6E48AA)])),
      ),
    );
 */