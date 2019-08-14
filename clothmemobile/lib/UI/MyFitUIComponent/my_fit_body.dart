import 'package:flutter/material.dart';
import 'package:treva_shop_flutter/UI/MyFitUIComponent/my_fit_list.dart';

class FitBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        // Expanded(flex: 1, child: new Fit()),
        Flexible(child: FitList())
      ],
    );
  }
}
