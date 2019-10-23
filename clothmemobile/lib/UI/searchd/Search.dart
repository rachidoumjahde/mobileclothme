import 'package:flutter/material.dart';

class SearchAppbar extends StatefulWidget {
  @override
  _SearchAppbarState createState() => _SearchAppbarState();
}

class _SearchAppbarState extends State<SearchAppbar> {
  @override

  /// Item TextFromField Search
  var _search = Padding(
    padding: const EdgeInsets.only(right: 20.0, left: 20.0),
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
          padding: const EdgeInsets.only(left: 20.0, right: 10.0),
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
      body: SingleChildScrollView(
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
    );
  }
}


