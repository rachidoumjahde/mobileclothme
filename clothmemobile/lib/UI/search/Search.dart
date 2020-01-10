import 'package:clothme/UI/search/widget/search_card.dart';
import 'package:clothme/core/provider_state/viewmodel/mock/brandMockData.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  Search({Key key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController _searchTextEditing = new TextEditingController();
  FocusNode _textFocusNode = new FocusNode();
  String _searchText = "";
  Icon _searchIcon = new Icon(Icons.search);
  Widget _appBarTitle = new Text('Discover');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Row(children: <Widget>[
        new Expanded(
          child: new Container(
            color: new Color(0xFFffffff),
            child: new CustomScrollView(
              scrollDirection: Axis.vertical,
              shrinkWrap: false,
              slivers: <Widget>[
                new SliverPadding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  sliver: new SliverList(
                    delegate: new SliverChildBuilderDelegate(
                          (context, index) => new DiscoverListCard(planets[index]),
                      childCount: planets.length,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
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
              hintText: 'Discover Brand...'
          ),
        );
      } else {
        this._searchIcon = new Icon(Icons.search);
        this._appBarTitle = new Text('Discover');
//        filteredNames = names;
        _searchTextEditing.clear();
      }
    });
  }
}






