import 'package:clothme/UI/profile/widget/circles.dart';
import 'package:clothme/UI/profile/widget/order_tab.dart';
import 'package:clothme/UI/profile/widget/wishlist.dart';
import 'package:clothme/UI/setting/SettingAcount.dart';
import 'package:clothme/core/provider_state/viewmodel/mock/brandMockData.dart';
import 'package:clothme/core/provider_state/viewmodel/profile/profile_viewmodel.dart';
import 'package:flutter/material.dart';

class MainCollapsingToolbar1 extends StatefulWidget {
  @override
  _MainCollapsingToolbarState createState() => _MainCollapsingToolbarState();
}

class _MainCollapsingToolbarState extends State<MainCollapsingToolbar1> {
  final ProfileViewModel profileViewModel;
  _MainCollapsingToolbarState({this.profileViewModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                leading: IconButton(
                    icon: Icon(Icons.filter_1),
                    onPressed: () {
                      // Do something
                    }),
                actions: <Widget>[
                  IconButton(
                      icon: Icon(Icons.settings),
                      onPressed: () {
                        Navigator.of(context).push(PageRouteBuilder(
                            pageBuilder: (_, __, ___) => settingAcount()));
                      }),
                ],
                expandedHeight: 200.0,
                iconTheme: IconThemeData(color: Colors.greenAccent),
                floating: true,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  centerTitle: true,
                  title: Text("User Name",
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 16.0,
                      )),
                  background: Stack(children: <Widget>[
                    Image.network(
                      "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
                      height: double.infinity,
                      width: double.infinity,
                      fit: BoxFit.fill,
                    )
                  ]),
                ),
              ),
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    labelColor: Colors.black87,
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Colors.black,
                    tabs: [
                      Tab(text: "Circles"),
                      Tab(text: "Orders"),
                      Tab(text: "WishList"),
                    ],
                  ),
                ),
                pinned: true,
              ),
            ];
          },
          body: TabBarView(children: <Widget>[
            CustomScrollView(
                scrollDirection: Axis.vertical,
                shrinkWrap: false,
                slivers: <Widget>[
                  new SliverPadding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    sliver: new SliverList(
                      delegate: new SliverChildBuilderDelegate(
                        (context, index) => new CircleListCard(planets[index]),
                        childCount: planets.length,
                      ),
                    ),
                  ),
                ]),
            CustomScrollView(
                scrollDirection: Axis.vertical,
                shrinkWrap: false,
                slivers: <Widget>[
                  new SliverPadding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0,),
                    sliver: new SliverList(
                      delegate: new SliverChildBuilderDelegate(
                        (context, index) => new OrderListCard(planets[index]),
                        childCount: planets.length,
                      ),
                    ),
                  ),
                ]),
            CustomScrollView(
                scrollDirection: Axis.vertical,
                shrinkWrap: false,
                slivers: <Widget>[
                  new SliverPadding(
                    padding: const EdgeInsets.all(10.0),
                    sliver: new SliverList(
                      delegate: new SliverChildBuilderDelegate(
                        (context, index) => new WishListGrid(),
                      ),
                    ),
                  ),
                ]),
          ]),
        ),
      ),
    );
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
