import 'package:flutter/material.dart';
import 'package:treva_shop_flutter/UI/search/widget/search_bar.dart';

class Search extends StatefulWidget {
  Search({Key key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController _searchTextEditing = new TextEditingController();
  FocusNode _textFocusNode = new FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// Appbar item
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Search",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16.0,
              color: Colors.black54,
              fontFamily: "Roboto"),
        ),
        iconTheme: IconThemeData(
          color: Color(0xFF6991C7),
        ),
        elevation: 0.0,
      ),
      body: Row(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            child: const SearchBar(),
          ),
          SingleChildScrollView(
            child: Container(
              child: Column(),
            ),
          ),
        ],
      ),
    );
  }
}


