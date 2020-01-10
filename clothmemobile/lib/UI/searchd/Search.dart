import 'package:flutter/material.dart';
import 'package:folding_cell/folding_cell.dart';

class SearchAppbar extends StatefulWidget {
  @override
  _SearchAppbarState createState() => _SearchAppbarState();
}

class _SearchAppbarState extends State<SearchAppbar> {
  @override

  /// Item TextFromField Search
  var _search = Padding(
    padding: const EdgeInsets.only(right: 0, left: 0),
    child: Container(
      height: 50.0,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 15.0,
                spreadRadius: 0.0)
          ]),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: Theme(
            data: ThemeData(hintColor: Colors.transparent),
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                  icon: Icon(
                    Icons.search,
                    color: Color(0xDD000000),
                    size: 28.0,
                  ),
                  hintText: "Search for Brand",
                  hintStyle: TextStyle(
                      color: Colors.black54,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w400)),
            ),
          ),
        ),
      ),
    ),
  );

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xFF6991C7),
        ),
        title: Text(
          "Search",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18.0,
              color: Colors.black54,
              fontFamily: "Roboto"),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.only(top: 0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    _search,
                    Padding(padding: EdgeInsets.only(bottom: 30.0, top: 2.0))
                  ],
                ),
              ),
            ),
          ),
          Container(
            child: Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  Container(
                    child: SimpleFoldingCell(
                      frontWidget: frontWidget(),
                      innerTopWidget: innerTopWidget(),
                      innerBottomWidget: innerBottomWidget(),
                      cellSize: Size(MediaQuery.of(context).size.width, 175),
                      padding: EdgeInsets.all(10.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Container frontWidget() {
  return Container(
    alignment: Alignment.center,
    child: Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    bottomLeft: Radius.circular(15.0)
                )
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0)
                )
            ),
          ),
        )
      ],
    ),
  );
}

Container innerTopWidget() {
  return Container(
    color: Color(0xff6a53a4),
  );
}

Container innerBottomWidget() {
  return Container(
    color: Color(0xffdfd4f4),
  );
}

