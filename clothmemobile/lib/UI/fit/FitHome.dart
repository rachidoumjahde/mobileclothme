import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:clothme/UI/fit/widget/brandDetails.dart';
import 'package:clothme/UI/notification/Notification.dart';
import 'package:clothme/UI/cart/CartLayout.dart';

class FitHome extends StatelessWidget {
  // Make this specific to ios or android
  final int fitPercentage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
//          backgroundColor: Theme.of(context).primaryColor,
          centerTitle: true,
          elevation: 2.0,
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation Menu',
            onPressed: null,
          ),
          title: Text(
            "Clothme",
//            style: Theme.of(context).textTheme.title,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20.0,
                color: Colors.black,
                fontFamily: "Roboto"),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: IconButton(
                  icon: Icon(Icons.shopping_cart),
                  // ignore: sdk_version_set_literal
                  onPressed: () => {_navigateCart(context)}),
            ),
            Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: IconButton(
                  icon: Icon(Icons.notifications),
                  onPressed: () => {_navigateNotification(context)},
                ))
          ],
        ),
        body: Row(
          children: <Widget>[
            Expanded(
              child: SizedBox(
                  child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) => Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Divider(),
                    BrandDetails(),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 8.0, 4.0, 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Row(children: <Widget>[
                            Container(
                              height: 20.0,
                              child: Text(
                                "$fitPercentage" +
                                    "%" +
                                    " Fit For Paul Ikhane, Get it Now for 30% OFF",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0),
                              ),
                            )
                          ]),
                        ],
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.loose,
                      child: Image.network(
                        "https://images.pexels.com/photos/672657/pexels-photo-672657.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 6.0, 0.0, 4.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              IconButton(
                                icon: Icon(FontAwesomeIcons.heart),
                                onPressed: () =>
                                    {_navigateNotification(context)},
                              ),
                              SizedBox(
                                width: 16.0,
                              ),
                              // Add some information about the fit here
                              IconButton(
                                icon: Icon(FontAwesomeIcons.comment),
                                onPressed: () =>
                                    {_navigateNotification(context)},
                              ),
                              SizedBox(
                                width: 180.0,
                              ),
//                              Container(
//                                  child: InkWell(
//                                onTap: () {},
//                                child: ButtonBuy(),
//                              ))
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        "Liked by paulikhane, maggie and 528,331 others",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              )),
            ),
          ],
        ));
  }
}

_navigateCart(context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => cart()));
}

_navigateNotification(context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => notification()));
}

class ButtonBuy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(10.0, 6.0, 4.0, 10.0),
      child: Container(
        height: 26.0,
        width: 80.0,
        child: Text(
          "Buy Now",
          style: TextStyle(
              color: Colors.white,
              letterSpacing: 0.2,
              fontFamily: "Roboto",
              fontSize: 12.0,
              fontWeight: FontWeight.w800),
        ),
        alignment: FractionalOffset.center,
        decoration: BoxDecoration(
            boxShadow: [BoxShadow(color: Colors.black38, blurRadius: 15.0)],
            borderRadius: BorderRadius.circular(5.0),
            gradient: LinearGradient(
                colors: <Color>[Color(0xFF121940), Color(0xFF6E48AA)])),
      ),
    );
  }
}
