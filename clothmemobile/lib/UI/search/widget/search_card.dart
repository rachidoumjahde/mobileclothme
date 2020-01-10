import 'package:clothme/common/widget/separator/separator.dart';
import 'package:clothme/common/widget/text/text_style.dart';
import 'package:clothme/core/provider_state/viewmodel/mock/brandMockData.dart';
import 'package:flutter/material.dart';

import 'discover_details.dart';

class DiscoverListCard extends StatelessWidget {
  final Planet planet;
  final bool horizontal;

  DiscoverListCard(this.planet, {this.horizontal = true});
  DiscoverListCard.vertical(this.planet) : horizontal = false;

  @override
  Widget build(BuildContext context) {
    final brandLogoThumbnail = Hero(
      tag: "planet-hero-${planet.id}",
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child:
            CircleAvatar(radius: 40, backgroundImage: AssetImage(planet.image)),
      ),
    );

    final brandUserFitCount = Hero(
      tag: "brand-user-fit-count-${planet.id}",
      child: Padding(
        padding: EdgeInsets.only(top: 130.0, left: 35.0),
        child: Container(
          width: 60.0,
          height: 30.0,
          child: Text("34 Fit"),
        ),
      ),
    );

    Widget _planetValue({String value}) {
      return Container(
        child: Row(mainAxisSize: MainAxisSize.max, children: <Widget>[
//          new Image.asset(image, height: 12.0),
//          new Container(width: 8.0),
          Text(planet.gravity, style: Style.smallTextStyle),
        ]),
      );
    }

    final brandCardContent = Container(
      margin: EdgeInsets.fromLTRB(
          horizontal ? 110.0 : 106.0, horizontal ? 10.0 : 42.0, 16.0, 16.0),
      constraints: BoxConstraints.expand(),
      child: Column(
        crossAxisAlignment:
            horizontal ? CrossAxisAlignment.start : CrossAxisAlignment.center,
        children: <Widget>[
//          new Container(height: 4.0),
          Text(planet.name, style: Style.titleTextStyle),
//          new Container(height: 10.0),
          Text(planet.location, style: Style.commonTextStyle),
//          new Separator(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: horizontal ? 1 : 0,
//                    child: _planetValue(
//                      value: planet.distance,
//                    )
                  child: Text(planet.gravity, style: Style.smallTextStyle),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Column(
              children: <Widget>[
                // images for delivery, verified, responds to customer,
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Text("We are a unisex brand and love to be seen"),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              children: <Widget>[
//                Text("34 Fit"),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0.0),
                  child: SizedBox(
                    height: 25.0,
                    child: Hero(
                      tag: "favourite-button-${planet.id}",
                      child: RaisedButton(
                        child: Text("Favourite"),
                        onPressed: () {
                          print("Favourite Working");
                        },
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );

    final brandCard = Container(
      child: brandCardContent,
      height: horizontal ? 200.0 : 154.0,
      margin:
          horizontal ? EdgeInsets.only(left: 0.0) : EdgeInsets.only(top: 20.0),
      decoration: BoxDecoration(
        color: Color(0xFFffffff),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(width: 2.0, color: const Color(0xFFFFFFFF)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 3.0,
            blurRadius: 5.0,
            offset: Offset(0.0, 3.0),
          ),
        ],
      ),
    );

    return GestureDetector(
        onTap: horizontal
            ? () => Navigator.of(context).push(PageRouteBuilder(
                  pageBuilder: (_, Animation<double> animation, ___) =>
                      AnimatedBuilder(
                          animation: animation,
                          builder: (BuildContext context, Widget child) {
                            return Opacity(
                                opacity: animation.value,
                                child: DiscoverDetailPage(planet));
                          }
//                        DiscoverDetailPage(planet),
//                    transitionsBuilder:
//                        (context, animation, secondaryAnimation, child) =>
//                            FadeTransition(opacity: animation, child: child),
                          ),
            transitionDuration: Duration(milliseconds: 500))
                )

            : null,
        child: Container(
          margin: const EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 20.0,
          ),
          child: Stack(
            children: <Widget>[
              brandCard,
              brandLogoThumbnail,
              brandUserFitCount
            ],
          ),
        ));
  }
}


//return GestureDetector(
//onTap: horizontal
//? () => Navigator.of(context).push(PageRouteBuilder(
//pageBuilder: (_, Animation<double> animation, ___) =>
//AnimatedBuilder(
//animation: animation,
//builder: (BuildContext context, Widget child) {
//return Opacity(
//opacity: animation.value,
//child: DiscoverDetailPage(planet));
//}
////                        DiscoverDetailPage(planet),
////                    transitionsBuilder:
////                        (context, animation, secondaryAnimation, child) =>
////                            FadeTransition(opacity: animation, child: child),
//),
//transitionDuration: Duration(milliseconds: 600))
//)
//
//: null,