import 'package:clothme/UI/market_place/widget/maketplace_list.dart';
import 'package:flutter/material.dart';

import 'widget/market_placee.dart';

class MarketPlaceView extends StatefulWidget {
  MarketPlaceView({Key key}) : super(key: key);

  @override
  _MarketPlaceState createState() => _MarketPlaceState();
}

class _MarketPlaceState extends State<MarketPlaceView> {
  TextEditingController _searchTextEditing = new TextEditingController();
  FocusNode _textFocusNode = new FocusNode();
  String _searchText = "";
  Icon _searchIcon = new Icon(Icons.search);
  Widget _appBarTitle = new Text('Market Place');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
//        child: MarketPlaceList(),
      child: StaggeredGridExample(),
      )
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return new AppBar(
      centerTitle: true,
      title: _appBarTitle,
      actions: <Widget>[
        IconButton(
          icon: _searchIcon,
          onPressed: _searchPressed,
        ),
      ],
    );
  }

  void _searchPressed() {
    setState(() {
      if (this._searchIcon.icon == Icons.search) {
        this._searchIcon = new Icon(Icons.close);
        this._appBarTitle = new TextField(
          controller: _searchTextEditing,
          decoration: new InputDecoration(
              prefixIcon: new Icon(Icons.search),
              hintText: 'Search Product Type...'
          ),
        );
      } else {
        this._searchIcon = new Icon(Icons.search);
        this._appBarTitle = new Text('Search');
//        filteredNames = names;
        _searchTextEditing.clear();
      }
    });
  }
}