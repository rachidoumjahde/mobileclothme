import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:treva_shop_flutter/UI/notification/Notification.dart';
import 'package:treva_shop_flutter/UI/cart/CartLayout.dart';

class FitHome extends StatelessWidget {
  // Make this specific to ios or android
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          backgroundColor: new Color(0xfff8faf8),
          centerTitle: true,
          elevation: 2.0,
          leading: new Icon(Icons.menu),
          title: Text(
            "My Sizes",
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20.0,
                color: Colors.black54,
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
        body: new Row(
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
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16.0, 8.0, 8.0, 6.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              new Container(
                                height: 40.0,
                                width: 40.0,
                                decoration: new BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: new DecorationImage(
                                      fit: BoxFit.fill,
                                      image: new NetworkImage(
                                          "https://pbs.twimg.com/profile_images/916384996092448768/PF1TSFOE_400x400.jpg")),
                                ),
                              ),
                              new SizedBox(
                                width: 10.0,
                              ),
                              new Text(
                                "Zara Man. Toronto",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 8.0, 4.0, 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Row(children: <Widget>[
                            new Container(
                              height: 20.0,
                              child: Text(
                                "99% Fit For Paul Ikhane, Get it Now for 30% OFF",
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
                      child: new Image.network(
                        "https://images.pexels.com/photos/672657/pexels-photo-672657.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 6.0, 0.0, 4.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              new IconButton(
                                icon: Icon(FontAwesomeIcons.heart),
                                onPressed: () =>
                                    {_navigateNotification(context)},
                              ),
                              new SizedBox(
                                width: 16.0,
                              ),
                              // Add some information about the fit here
                              new IconButton(
                                icon: Icon(FontAwesomeIcons.comment),
                                onPressed: () =>
                                    {_navigateNotification(context)},
                              ),
                              new SizedBox(
                                width: 180.0,
                              ),
                              new Container(
                                  child: InkWell(
                                    onTap: () {},
                                    child: ButtonBuy(),
                              ))
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
