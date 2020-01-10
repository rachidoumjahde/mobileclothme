import 'package:clothme/common/widget/separator/separator.dart';
import 'package:clothme/common/widget/text/text_style.dart';
import 'package:clothme/core/provider_state/viewmodel/mock/brandMockData.dart';
import 'package:flutter/material.dart';

import 'brand_detail.dart';

class BrandListCard extends StatelessWidget {
  final Planet planet;
  final bool horizontal;

  BrandListCard(this.planet, {this.horizontal = true});
  BrandListCard.vertical(this.planet) : horizontal = false;
  @override
  Widget build(BuildContext context) {
    final logoThumbnail = Container(
      height: 160,
      width: MediaQuery.of(context).size.width,
//      decoration: BoxDecoration(color: Colors.green),
      child: Stack(children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 50),
          child: Container(
            height: 110,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Colors.orange),
          ),
        ),
        Positioned(
          top: 5,
          child: Row(children: <Widget>[
            Hero(
              tag: "planet-hero-${planet.id}",
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: CircleAvatar(
                    radius: 60,
                    backgroundImage:
                        AssetImage("assets/imgBrand/nikeHeader.png")),
              ),
            ),
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 40, bottom: 2),
                    child: Text(
                      "Zara",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text("Vancouver"),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.search),
                        SizedBox(width: 15),
                        Icon(Icons.search),
                        SizedBox(width: 15),
                        Icon(Icons.search),
                        SizedBox(width: 15),
                        Icon(Icons.search),
                      ],
                    ),
                  ),
                ]),
          ]),
        ),
      ]),
    );

    final brandUserFitCount = Hero(
      tag: "user-fit-count-${planet.id}",
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          planet.fitCount.toString(),
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );

    Widget _brandServices = Hero(
      tag: "",
      child: Row(),
    );

    Widget _planetValue({String value, String image}) {
      return Container(
        child: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
          Image.asset(image, height: 12.0),
          Container(width: 8.0),
          Text(planet.gravity, style: Style.smallTextStyle),
        ]),
      );
    }

    final brandCardContent = Container(
      margin: EdgeInsets.fromLTRB(
          horizontal ? 76.0 : 16.0, horizontal ? 16.0 : 42.0, 16.0, 16.0),
      constraints: BoxConstraints.expand(),
      child: Column(
        crossAxisAlignment:
            horizontal ? CrossAxisAlignment.start : CrossAxisAlignment.center,
        children: <Widget>[
          Container(height: 4.0),
          Text(planet.name, style: Style.titleTextStyle),
          Container(height: 10.0),
          Text(planet.location, style: Style.commonTextStyle),
          Separator(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
//              new Expanded(
//                  flex: horizontal ? 1 : 0,
//                  child: _planetValue(
//                      value: planet.distance,
//                      image: 'assets/img/ic_distance.png')),
              Container(
                width: horizontal ? 8.0 : 32.0,
              ),
//              new Expanded(
//                  flex: horizontal ? 1 : 0,
//                  child: _planetValue(
//                      value: planet.gravity,
//                      image: 'assets/img/ic_gravity.png'))
            ],
          ),
        ],
      ),
    );

    final brandCard = Container(
//      child: FittedBox(
//        child: Image.asset(
//          "assets/imgCategoryMan/Man6.jpg",
//          fit: BoxFit.fill,
//        ),
//      ),//brandCardContent,
      height: horizontal ? 500.0 : 154.0,
      margin:
          horizontal ? EdgeInsets.only(left: 0.0) : EdgeInsets.only(top: 20.0),
      decoration: BoxDecoration(
        color: Color(0xFF333366),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            offset: Offset(0.0, 10.0),
          ),
        ],
      ),
    );

    return GestureDetector(
        onTap: horizontal
            ? () => Navigator.of(context).push(
                  PageRouteBuilder(
                    pageBuilder: (_, __, ___) => TwitterProfilePage(),//DetailPage(planet),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) =>
                            FadeTransition(opacity: animation, child: child),
                  ),
                )
            : null,
        child: Container(
          margin: const EdgeInsets.symmetric(
            vertical: 12.0,
            horizontal: 20.0,
          ),
          child: Stack(
            children: <Widget>[
              brandCard,
              Positioned(right: 10.0, top: 20, child: brandUserFitCount),
              Positioned(left: 0.0, bottom: 0.0, child: logoThumbnail),
            ],
          ),
        ));
  }
}
