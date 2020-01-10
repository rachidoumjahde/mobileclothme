import 'package:clothme/UI/search/widget/search_brand_fit.dart';
import 'package:clothme/core/provider_state/viewmodel/mock/brandMockData.dart';
import 'package:flutter/material.dart';

class DiscoverDetailPage extends StatelessWidget {
  final Planet planet;
  DiscoverDetailPage(this.planet);
  @override
  Widget build(BuildContext context) {
    final brandLogoThumbnail = Hero(
      tag: "planet-hero-${planet.id}",
      child: Padding(
        padding: EdgeInsets.only(top: 10.0, bottom: 3.0),
        child:
            CircleAvatar(radius: 50, backgroundImage: AssetImage(planet.image)),
      ),
    );

    final brandUserFitCount = Hero(
      tag: "brand-user-fit-count-${planet.id}",
      child: Padding(
        padding: EdgeInsets.only(top: 0.0, left: 0.0),
        child: Container(
          width: 40.0,
          height: 30.0,
          child: Text("34 Fit"),
        ),
      ),
    );

    final topContentText = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 20.0),
        Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(),
              child: brandLogoThumbnail,
            ),
            SizedBox(height: 10.0),
            Column(children: <Widget>[
              Text(
                planet.name,
                style: TextStyle(color: Colors.white, fontSize: 22.0),
              ),
              SizedBox(height: 10.0),
              Text(
                planet.gravity,
                style: TextStyle(color: Colors.white),
              ),
            ]),
          ],
        ),
      ],
    );

    final topContent = Stack(
      children: <Widget>[
        Container(
            padding: EdgeInsets.only(top: 10.0),
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/imgItem/shoes2.jpg"),
                fit: BoxFit.cover,
              ),
            )),
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 30.0),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Color.fromRGBO(58, 66, 86, .9)),
          child: Center(
            child: topContentText,
          ),
        ),
        Positioned(
          left: 16.0,
          top: 30.0,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back, color: Colors.white),
          ),
        ),
        Positioned(
          right: 40.0,
          bottom: 40.0,
          child: brandUserFitCount,
        ),
      ],
    );

    final bottomContentText = Text(
      planet.description,
      style: TextStyle(fontSize: 18.0),
    );
    final favouriteButton = Container(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        width: MediaQuery.of(context).size.width,
        height: 80.0,
        child: Hero(
          tag: "favourite-button-${planet.id}",
          child: RaisedButton(
            onPressed: () => {},
            color: Color.fromRGBO(58, 66, 86, 1.0),
            child:
                Text("FAVOURITE", style: TextStyle(color: Colors.white)),
          ),
        ));
    final bottomContent = Container(
      // height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      // color: Theme.of(context).primaryColor,
      padding: EdgeInsets.all(0.0),
      child: Center(
        child: Column(
          children: <Widget>[Container(height: 100, child: SearchBrandUserFitCount()), favouriteButton],
        ),
      ),
    );
    return Scaffold(
      body: Column(
        children: <Widget>[topContent, bottomContent],
      ),
    );
  }
}
