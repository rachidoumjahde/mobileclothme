import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 1),
  const StaggeredTile.count(1, 2),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(1, 2),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(3, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(4, 1),
];

List<Widget> _tiles = const <Widget>[
  const _SearchBrandUserFitCountTile(Colors.green, Icons.widgets),
  const _SearchBrandUserFitCountTile(Colors.lightBlue, Icons.wifi),
  const _SearchBrandUserFitCountTile(Colors.amber, Icons.panorama_wide_angle),
  const _SearchBrandUserFitCountTile(Colors.brown, Icons.map),
  const _SearchBrandUserFitCountTile(Colors.deepOrange, Icons.send),
  const _SearchBrandUserFitCountTile(Colors.indigo, Icons.airline_seat_flat),
  const _SearchBrandUserFitCountTile(Colors.red, Icons.bluetooth),
  const _SearchBrandUserFitCountTile(Colors.pink, Icons.battery_alert),
  const _SearchBrandUserFitCountTile(Colors.purple, Icons.desktop_windows),
  const _SearchBrandUserFitCountTile(Colors.blue, Icons.radio),
];

class SearchBrandUserFitCount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
//        appBar: new AppBar(
//          title: new Text('Example 01'),
//        ),
        body: new Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: new StaggeredGridView.count(
              crossAxisCount: 4,
              staggeredTiles: _staggeredTiles,
              children: _tiles,
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
              padding: const EdgeInsets.all(4.0),
            )));
  }
}

class _SearchBrandUserFitCountTile extends StatelessWidget {
  const _SearchBrandUserFitCountTile(this.backgroundColor, this.iconData);

  final Color backgroundColor;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return new Card(
      color: backgroundColor,
      child: new InkWell(
        onTap: () {},
        child: new Center(
          child: new Padding(
            padding: const EdgeInsets.all(4.0),
            child: new Icon(
              iconData,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}