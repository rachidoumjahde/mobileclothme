import 'package:flutter/material.dart';

import '../BottomNavigationBar.dart';


class LoginAnimation extends StatefulWidget {

  final AnimationController animationController;
  final Animation animation;
  /// To set type animation and  start and end animation
  LoginAnimation({Key key, this.animationController})
      : animation = new Tween(
          end: 500.0,
          begin: 70.0,
        ).animate(CurvedAnimation(
            parent: animationController, curve: Curves.bounceInOut)),
        super(key: key);


  Widget _buildAnimation(BuildContext context, Widget child) {
    /// Setting shape a animation
    return Padding(
        padding: EdgeInsets.only(bottom: 60.0),
        child: Container(
          height: animation.value,
          width: animation.value,
          decoration: BoxDecoration(
            color: Color(0xFF3B2E6F),
            shape: animation.value < 300 ? BoxShape.circle : BoxShape.rectangle,
          ),
        ));
  }

  @override
  _LoginAnimationState createState() => _LoginAnimationState();
}

class _LoginAnimationState extends State<LoginAnimation> {
  @override
  /// To navigation after animation complete
  Widget build(BuildContext context) {
    widget.animationController.addListener(() {
      if (widget.animation.isCompleted) {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => new BottomNavigation()));
      }
    });

    return new AnimatedBuilder(
      animation: widget.animationController,
      builder: widget._buildAnimation,
    );
  }
}
