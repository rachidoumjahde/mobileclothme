import 'package:clothme/UI/signin/SignIn.dart';
import 'package:clothme/UI/signin/LoginAnimation.dart';
import 'package:clothme/UI/signup/Signup.dart';
import 'package:clothme/UI/signup/widget/name_logo.dart';
import 'package:clothme/common/widget/text_form_field.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> with TickerProviderStateMixin {
  AnimationController sAnimationController;
  AnimationController animationControllerScreen;
  Animation animationScreen;
  var tap = 0;
  void onSave() {}
  String validate(value) {
    if (value.isEmpty) {
      return 'Please enter some text';
    }
    return null;
  }

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    sAnimationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 400))
          ..addStatusListener((status) {
            if (status == AnimationStatus.dismissed) {
              setState(() {
                tap = 0;
              });
            }
          });
    super.initState();
  }

  /// Dispose animationController
  @override
  void dispose() {
    super.dispose();
    sAnimationController.dispose();
  }

  Future<Null> _playAnimation() async {
    try {
      await sAnimationController.forward();
      await sAnimationController.reverse();
    } on TickerCanceled {}
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
//    mediaQueryData.devicePixelRatio;
    mediaQueryData.size.height;
    mediaQueryData.size.width;
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: <Widget>[
        Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Container(
                alignment: AlignmentDirectional.topCenter,
                child: Column(
                  children: <Widget>[
                    /// padding logo
                    Padding(
                        padding: EdgeInsets.only(
                            top: mediaQueryData.padding.top + 60.0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
//                                Image(
//                                  image: AssetImage("assets/img/Logo.png"),
//                                  height: 70.0,
//                                ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 0.0)),

                        /// Animation text treva shop accept from signup layout (Click to open code)
                        Hero(
                          tag: "login_tag",
                          child: Text(
                            "ClothME",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                letterSpacing: 0.6,
                                color: Colors.white,
                                fontFamily: "Sans",
                                fontSize: 26.0),
                          ),
                        ),
                      ],
                    ),

                    Padding(padding: EdgeInsets.symmetric(vertical: 30.0)),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        /// ButtonCustomFacebook
                        Padding(padding: EdgeInsets.symmetric(vertical: 30.0)),
                        ButtonCustomFacebook(),

                        /// ButtonCustomGoogle
                        Padding(padding: EdgeInsets.symmetric(vertical: 7.0)),
                        ButtonCustomGoogle(),
                      ],
                    ),

                    /// Set Text
                    Padding(padding: EdgeInsets.symmetric(vertical: 20.0)),
//                    Text(
//                      "OR",
//                      style: TextStyle(
//                          fontWeight: FontWeight.w900,
//                          color: Colors.white,
//                          letterSpacing: 0.2,
//                          fontFamily: 'Sans',
//                          fontSize: 17.0),
//                    ),

                    /// TextFromField Email
                    Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
                    TextFieldInput(
                      icon: Icons.email,
                      textHide: false,
                      type: "Email",
                      keyboardInputType: TextInputType.emailAddress,
                    ),

                    /// TextFromField Password
                    Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
                    TextFieldInput(
                      icon: Icons.vpn_key,
                      textHide: true,
                      type: "Password",
                      keyboardInputType: TextInputType.text,
                    ),

                    /// Button Signup
                    FlatButton(
                        padding: EdgeInsets.only(top: 20.0),
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      new SignUp()));
                        },
                        child: Text(
                          "Not Have Acount? Sign Up",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 13.0,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Sans"),
                        )),
                    Padding(
                      padding: EdgeInsets.only(
                          top: mediaQueryData.padding.top + 100.0, bottom: 0.0),
                    ),
                    RaisedButton(onPressed: () {
                      LoginAnimation(
                        animationController: sAnimationController.view,
                      );
                    }),
                  ],
                ),
              ),
            ],
          ),
        ),

        /// Set Animation after user click buttonLogin
//        tap == 0
//            ? InkWell(
//                splashColor: Colors.black,
//                onTap: () {
//                  setState(() {tap = 1;});
//                  _playAnimation();
//                  return tap;
//                },
//                child: RaisedButton(onPressed: null),
//              )
//            : new LoginAnimation(
//                animationController: sAnimationController.view,
//              )
      ],
    );
  }
}
