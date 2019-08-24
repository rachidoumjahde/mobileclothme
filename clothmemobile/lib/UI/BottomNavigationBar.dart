import 'package:flutter/material.dart';
import 'package:treva_shop_flutter/UI/BrandUIComponent/BrandLayout.dart';
import 'package:treva_shop_flutter/UI/CartUIComponent/CartLayout.dart';
import 'package:treva_shop_flutter/UI/HomeUIComponent/Home.dart';
import 'package:treva_shop_flutter/UI/AcountUIComponent/Profile.dart';
import 'package:treva_shop_flutter/UI/HomeUIComponent/Search.dart';
import 'package:treva_shop_flutter/UI/MyFitUIComponent/my_fit_home.dart';

class bottomNavigationBar extends StatefulWidget {
  @override
  _bottomNavigationBarState createState() => _bottomNavigationBarState();
}

class _bottomNavigationBarState extends State<bottomNavigationBar> {
  int currentIndex = 0;

  /// Set a type current number a layout class
  Widget callPage(int current) {
    switch (current) {
      case 0:
        return new FitHome();
      case 1:
        return new searchAppbar();
      case 2:
        return new brand();
      case 3:
        return new profile();
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
                    "Size",
                    style: TextStyle(
                        fontFamily: "Roboto",
                        letterSpacing: 0.5,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600),
                  )),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  title: Text(
                    "Search",
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
