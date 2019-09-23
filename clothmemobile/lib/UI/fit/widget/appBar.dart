import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Function navigateCart;
  final Function navigateNotification;

  MyAppBar({Key key, this.title, @required this.navigateCart, this.navigateNotification}) : super(key: key);

  @override
  Size get preferredSize {
    return new Size.fromHeight(55.0);
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: new Color(0xfff8faf8),
      centerTitle: true,
      elevation: 2.0,
      leading: IconButton(
        icon: Icon(Icons.menu),
        tooltip: 'Navigation Menu',
        onPressed: null,
      ),
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
              onPressed: () => {navigateCart(context)}),
        ),
        Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () => {navigateNotification(context)},
            ))
      ],
    );
  }
}