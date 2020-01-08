import 'package:flutter/material.dart';
import 'package:tuple/tuple.dart';

class MainCollapsingToolbar extends StatefulWidget {
  @override
  _MainCollapsingToolbarState createState() => _MainCollapsingToolbarState();
}

class _MainCollapsingToolbarState extends State<MainCollapsingToolbar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverPersistentHeader(
                delegate: _MySliverAppBar(
                    expandedHeight: 200,
                    tabBar: TabBar(
                      labelColor: Colors.black87,
                      unselectedLabelColor: Colors.grey,
                      tabs: [
                        Tab(text: "Brands"),
                        Tab(text: "Circles"),
                      ],
                    )),
                pinned: true,
              ),
            ];
          },
          body: Center(
            child: Text("Sample text"),
          ),
        ),
      ),
    ));
//    return Scaffold(
//      body: DefaultTabController(
//        length: 2,
//        child: NestedScrollView(
//          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
//            return <Widget>[
//              SliverAppBar(
//                expandedHeight: 200.0,
//                floating: false,
//                pinned: true,
//                flexibleSpace: FlexibleSpaceBar(
//                    centerTitle: true,
//                    title: Text("Collapsing Toolbar",
//                        style: TextStyle(
//                          color: Colors.black87,
//                          fontSize: 16.0,
//                        )),
//                    background: Image.network(
//                      "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
//                      fit: BoxFit.cover,
//                    )),
//              ),
//              SliverPersistentHeader(
//                delegate: _SliverAppBarDelegate(
//                  TabBar(
//                    labelColor: Colors.black87,
//                    unselectedLabelColor: Colors.grey,
//                    tabs: [
//                      Tab(text: "Brands"),
//                      Tab(text: "Circles"),
//                    ],
//                  ),
//                ),
//                pinned: true,
//              ),
//            ];
//          },
//          body: Center(
//            child: Text("Sample text"),
//          ),
//        ),
//      ),
//    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}

class _MySliverAppBar extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  final TabBar tabBar;

  _MySliverAppBar({@required this.expandedHeight, @required this.tabBar});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      fit: StackFit.expand,
      overflow: Overflow.visible,
      children: [
        Image.network(
          "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
          fit: BoxFit.cover,
        ),
        Center(
          child: Opacity(
            opacity: shrinkOffset / 200,
            child: Text(
              "MySliverAppBar",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 23,
              ),
            ),
          ),
        ),
        Positioned(
          top: 290 / 2 - shrinkOffset,
          left: MediaQuery.of(context).size.width / 4,
          child: Opacity(
            opacity: (1 - shrinkOffset / 200),
            child: Card(
              elevation: 10,
              child: SizedBox(
                height: 100, //expandedHeight,
                width: MediaQuery.of(context).size.width / 2,
                child: FlutterLogo(),
              ),
            ),
          ),
        ),
        Positioned(
          top: 260 - shrinkOffset,
          left: MediaQuery.of(context).size.width / 2.5,
          child: SizedBox(
            height: 50,
            child: Text("Paul Ikhane"),
          ),
        ),
        Positioned(
          top: 280 - shrinkOffset,
          left: MediaQuery.of(context).size.width / 2.5,
          child: SizedBox(
            height: 50,
            child: Text("Software Engineer"),
          ),
        ),
        Positioned(
          top: 300 - shrinkOffset,
          left: MediaQuery.of(context).size.width / 2.5,
          child: SizedBox(
            height: 50,
            child: Text("Toront, Canada"),
          ),
        ),
        Positioned(
          top: 300 - shrinkOffset,
          left: MediaQuery.of(context).size.width / 2.5,
          child: Container(
            child: tabBar,
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
//  double get minExtent => tabBar.preferredSize.height;
  @override
//  double get maxExtent => tabBar.preferredSize.height;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
