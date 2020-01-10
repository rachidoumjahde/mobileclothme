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

  static double avatarMaximumRadius = 40.0;
  static double avatarMinimumRadius = 15.0;
  double avatarRadius = avatarMaximumRadius;
  double expandedHeader = 130.0;
  double translate = -avatarMaximumRadius;
  bool isExpanded = true;
  double offset = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<ScrollUpdateNotification>(
        onNotification: (scrollNotification) {
          final pixels = scrollNotification.metrics.pixels;

          // check if scroll is vertical ( left to right OR right to left)
          final scrollTabs =
          (scrollNotification.metrics.axisDirection == AxisDirection.right ||
              scrollNotification.metrics.axisDirection == AxisDirection.left);

          if (!scrollTabs) { // and here prevents animation of avatar when you scroll tabs
            if (expandedHeader - pixels <= kToolbarHeight) {
              if (isExpanded) {
                translate = 0.0;
                setState(() {
                  isExpanded = false;
                });
              }
            } else {
              translate = -avatarMaximumRadius + pixels;
              if (translate > 0) {
                translate = 0.0;
              }
              if (!isExpanded) {
                setState(() {
                  isExpanded = true;
                });
              }
            }

            offset = pixels * 0.4;

            final newSize = (avatarMaximumRadius - offset);

            setState(() {
              if (newSize < avatarMinimumRadius) {
                avatarRadius = avatarMinimumRadius;
              } else if (newSize > avatarMaximumRadius) {
                avatarRadius = avatarMaximumRadius;
              } else {
                avatarRadius = newSize;
              }
            });
          }
          return true;
        },
      child: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Colors.black,
                leading: IconButton(
                    icon: Icon(Icons.more),
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
                expandedHeight:
                    MediaQuery.of(context).size.height * 0.3, //200.0,
                iconTheme: IconThemeData(color: Colors.greenAccent),
                floating: true,
                pinned: true,
                flexibleSpace: Container(
                  decoration: BoxDecoration(
                      color: isExpanded ? Colors.transparent : Colors.blue[800],
                      image: isExpanded
                          ? DecorationImage(
                              fit: BoxFit.cover,
                              alignment: Alignment.bottomCenter,
                              image:
                                  AssetImage("assets/imgPromo/imgPromo5.jpg"))
                          : null),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: isExpanded
                        ? Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, avatarMaximumRadius),
                            child: MyAvatar(
                              size: avatarRadius,
                            ),
                          )
                        : SizedBox.shrink(),
                  ),
                ),
//                flexibleSpace: FlexibleSpaceBar(
//                  collapseMode: CollapseMode.pin,
//                  centerTitle: true,
//                  title: Text("User Name",
//                      style: TextStyle(
//                        color: Colors.blueGrey,
//                        fontSize: 16.0,
//                      )),
//                  background: Stack(children: <Widget>[
//                    Image.network(
//                      "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
//                      height: double.infinity,
//                      width: double.infinity,
//                      fit: BoxFit.fill,
//                    ),
//                  ]),
//                ),
              ),
              SliverToBoxAdapter(
                child: Stack(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            isExpanded
                                ? SizedBox(
                              height: avatarMinimumRadius * 2,
                            )
                                : MyAvatar(
                              size: avatarMinimumRadius,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 5.0, horizontal: 10.0),
                                decoration: BoxDecoration(
                                  color: Colors.lightBlue,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Text(
                                  "Following",
                                  style: TextStyle(
                                      fontSize: 17.0, color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                        TwitterHeader(),
                      ],
                    ),
                  ),
                ]),
              ),
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Colors.orange,
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
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                    ),
                    sliver: SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) => OrderListCard(planets[index]),
                        childCount: planets.length,
                      ),
                    ),
                  ),
                ]),
            CustomScrollView(
                scrollDirection: Axis.vertical,
                shrinkWrap: false,
                slivers: <Widget>[
                  SliverPadding(
                    padding: const EdgeInsets.all(10.0),
                    sliver: SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) => WishListCard(planets[index]),
                        childCount: planets.length,
                      ),
                    ),
                  ),
                ]),
          ]),
        ),
      ),
    ));
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
      color: Colors.black,
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}

class TwitterHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 5.0,
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "Google’s mobile app SDK for building beautiful native apps on iOS and Android in record time // For support visit http://stackoverflow.com/tags/flutter",
            style: TextStyle(
              color: Colors.black,
              fontSize: 15.0,
            ),
          )
        ],
      ),
    );
  }
}

class MyAvatar extends StatelessWidget {
  final double size;

  const MyAvatar({Key key, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey[800],
              width: 2.0,
            ),
            shape: BoxShape.circle),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: CircleAvatar(
            radius: size,
            backgroundImage: AssetImage("assets/avatars/avatar-1.jpg"),
          ),
        ),
      ),
    );
  }
}

