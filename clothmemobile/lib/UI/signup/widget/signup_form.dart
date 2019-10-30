import 'package:clothme/UI/signin/SignIn.dart';
import 'package:clothme/UI/signin/LoginAnimation.dart';
import 'package:clothme/UI/signup/widget/name_logo.dart';
import 'package:clothme/common/widget/text_form_field.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> with TickerProviderStateMixin {
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
    // TODO: implement initState
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
                    // name and logo widget
                    const NameLogoWidget(name: "Clothme"),
                    Padding(padding: EdgeInsets.symmetric(vertical: 70.0)),

                    /// TextFromField Email
                    TextFieldInput(
                      icon: Icons.person,
                      textHide: false,
                      type: "First Name",
                      keyboardInputType: TextInputType.emailAddress,
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
                    TextFieldInput(
                      icon: Icons.email,
                      textHide: false,
                      type: "Email",
                      keyboardInputType: TextInputType.emailAddress,
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),

                    /// TextFromField Password
                    TextFieldInput(
                      icon: Icons.vpn_key,
                      textHide: true,
                      type: "Password",
                      keyboardInputType: TextInputType.text,
                    ),

                    Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),

                    /// TextFromField Password
                    TextFieldInput(
                      icon: Icons.map,
                      textHide: false,
                      type: "City",
                      keyboardInputType: TextInputType.text,
                    ),

                    /// Button Login
                    FlatButton(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        "Have Acount? Sign In",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13.0,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Sans"),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                new SignInView()));
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: mediaQueryData.padding.top + 40.0, bottom: 0.0),
                    ),
                    RaisedButton(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13.0,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Sans"
                        ),
                      ),
                      onPressed: () {
                        // Validate returns true if the form is valid, otherwise false.
                        if (_formKey.currentState.validate()) {
                          // If the form is valid, display a snackbar. In the real world,
                          // you'd often call a server or save the information in a database.
                          Scaffold
                              .of(context)
                              .showSnackBar(SnackBar(content: Text('Processing Data')));
                        }
                      },
                    ),
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
