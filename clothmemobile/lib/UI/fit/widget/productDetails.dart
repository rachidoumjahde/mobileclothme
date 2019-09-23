import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {

  final String fitPercentage;
  final String discount;
  final Image productImage;

  ProductDetails({Key key, this.fitPercentage, this.discount, this.productImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 8.0, 4.0, 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(children: <Widget>[
                Container(
                  height: 20.0,
                  child: Text(
                    "99% Fit For Paul Ikhane, Get it Now for 30% OFF",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
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
        )
      ],
    );
  }
}
