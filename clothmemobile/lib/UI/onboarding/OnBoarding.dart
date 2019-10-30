import 'package:flutter/material.dart';
import 'package:clothme/Library/intro_views_flutter-2.4.0/lib/Models/page_view_model.dart';
import 'package:clothme/Library/intro_views_flutter-2.4.0/lib/intro_views_flutter.dart';
import '../signin/SignIn.dart';


class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

var _fontHeaderStyle = TextStyle(
  fontFamily: "Popins",
  fontSize: 21.0,
  fontWeight: FontWeight.w800,
  color: Colors.black87,
  letterSpacing: 1.5
);

var _fontDescriptionStyle = TextStyle(
  fontFamily: "Sans",
  fontSize: 15.0,
  color: Colors.black38,
  fontWeight: FontWeight.w400
);

///
/// Page View Model for on boarding
///
final pages = [
  new PageViewModel(
      pageColor:  Colors.white,
      iconColor: Colors.black,
      bubbleBackgroundColor: Colors.black,
      title: Text(
        'E-Commerce App',style: _fontHeaderStyle,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 250.0,
            child: Text(
              'You only see fashion pieces that fits \nSo You focus on your style',textAlign: TextAlign.center,
              style: _fontDescriptionStyle
            ),
          ),
        ),
      ),
      mainImage: Image.asset(
        'assets/imgIllustration/IlustrasiOnBoarding1.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      )),

  new PageViewModel(
      pageColor:  Colors.white,
      iconColor: Colors.black,
      bubbleBackgroundColor: Colors.black,
      title: Text(
        'Choose Item',style: _fontHeaderStyle,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 250.0,
            child: Text(
                'Choose Items wherever you are with this application to make life easier',textAlign: TextAlign.center,
                style: _fontDescriptionStyle
            ),
          ),
        ),
      ),
      mainImage: Image.asset(
        'assets/imgIllustration/IlustrasiOnBoarding2.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      )),

  new PageViewModel(
      pageColor:  Colors.white,
      iconColor: Colors.black,
      bubbleBackgroundColor: Colors.black,
      title: Text(
        'Buy Item',style: _fontHeaderStyle,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 250.0,
            child: Text(
                'Shop from thousand brands in the world \n in one application at throwaway \nprices ',textAlign: TextAlign.center,
                style: _fontDescriptionStyle
            ),
          ),
        ),
      ),
      mainImage: Image.asset(
        'assets/imgIllustration/IlustrasiOnBoarding3.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      )),

];

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return IntroViewsFlutter(
      pages,
      pageButtonsColor: Colors.black45,
      skipText: Text("SKIP",style: _fontDescriptionStyle.copyWith(color: Colors.deepPurpleAccent,fontWeight: FontWeight.w800,letterSpacing: 1.0),),
      doneText: Text("DONE",style: _fontDescriptionStyle.copyWith(color: Colors.deepPurpleAccent,fontWeight: FontWeight.w800,letterSpacing: 1.0),),
      onTapDoneButton: (){
        Navigator.of(context).pushReplacement(PageRouteBuilder(pageBuilder: (_,__,___)=> new SignInView(),
        transitionsBuilder: (_,Animation<double> animation,__,Widget widget){
          return Opacity(
            opacity: animation.value,
            child: widget,
          );
        },
        transitionDuration: Duration(milliseconds: 500),
        ));
      },
    );
  }
}

