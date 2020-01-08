import 'package:clothme/UI/brand/favouriteBrand.dart';
import 'package:clothme/UI/market_place/MarketPlaceView.dart';
import 'package:clothme/UI/profile/Profiled.dart';
import 'package:clothme/UI/searchd/Search.dart';
import 'package:flutter/material.dart';
import 'brand/BrandLayout.dart';
import 'fit/FitHome.dart';
import 'profile/Profile.dart';
import 'search/Search.dart';


class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationBarState createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<BottomNavigation> {
  int currentIndex = 0;

  /// Set a type current number a layout class
  Widget callPage(int current) {
    switch (current) {
      case 0:
        return new FitHome();
      case 1:
        return new Search();
      case 2:
        return new FavouriteBrand(); //brand();
      case 3:
        return new MarketPlaceView();//MarketPlaceView();
      case 4:
        return new ProfileView();//profile();
        break;
      default:
        return FitHome();
    }
  }

  /// Build BottomNavigationBar Widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: callPage(currentIndex),
      bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
              canvasColor: Colors.white,
              textTheme: Theme.of(context).textTheme.copyWith(
                  caption: TextStyle(color: Colors.black26.withOpacity(0.15)))),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            fixedColor: Color(0xDD000000),
            onTap: (value) {
              currentIndex = value;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    size: 23.0,
                  ),
                  title: Text(
                    "Fit",
                    style: TextStyle(
                        fontFamily: "Roboto",
                        letterSpacing: 0.5,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600),
                  )),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  title: Text(
                    "Discover",
                    style: TextStyle(
                        fontFamily: "Roboto",
                        letterSpacing: 0.5,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600),
                  )),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shop),
                  title: Text(
                    "Brand",
                    style: TextStyle(
                        fontFamily: "Roboto",
                        letterSpacing: 0.5,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600),
                  )),
              BottomNavigationBarItem(
                  icon: Icon(Icons.local_mall),
                  title: Text(
                    "Market",
                    style: TextStyle(
                        fontFamily: "Roboto",
                        letterSpacing: 0.5,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600),
                  )),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    size: 24.0,
                  ),
                  title: Text(
                    "Acount",
                    style: TextStyle(
                        fontFamily: "Roboto",
                        letterSpacing: 0.5,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600),
                  )),
            ],
          )),
    );
  }
}
