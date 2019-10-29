import 'dart:async';

import 'package:clothme/UI/signup/widget/signup_form.dart';
import 'package:flutter/material.dart';
import 'package:clothme/UI/signin/Login.dart';
import 'package:clothme/UI/signin/LoginAnimation.dart';
import 'package:clothme/common/widget/text_form_field.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            /// Set Background image in layout
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/img/backgroundgirl.png"),
              fit: BoxFit.cover,
            )),
            child: Container(
              /// Set gradient color in image
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(0, 0, 0, 0.2),
                    Color.fromRGBO(0, 0, 0, 0.3)
                  ],
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                ),
              ),

              /// Set component layout
              child: ListView(
                padding: EdgeInsets.all(0.0),
                children: <Widget>[
                  SignUpForm()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
