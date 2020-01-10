//import 'package:clothme/common/widget/separator/separator.dart';
//import 'package:clothme/common/widget/text/text_style.dart';
//import 'package:clothme/core/provider_state/viewmodel/mock/brandMockData.dart';
//import 'package:flutter/material.dart';
//
//import 'myBrandList.dart';
//
//
//class DetailPage extends StatelessWidget {
//  final Planet planet;
//  DetailPage(this.planet);
//
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      body: new Container(
//        constraints: new BoxConstraints.expand(),
//        color: new Color(0xFF736AB7),
//        child: new Stack (
//          children: <Widget>[
//            _getBackground(),
//            _getGradient(),
//            _getContent(),
//            _getToolbar(context),
//          ],
//        ),
//      ),
//    );
//  }
//
//  Container _getBackground () {
//    return new Container(
//      child: new Image.network(planet.image,
//        fit: BoxFit.cover,
//        height: 300.0,
//      ),
//      constraints: new BoxConstraints.expand(height: 295.0),
//    );
//  }
//
//  Container _getGradient() {
//    return new Container(
//      margin: new EdgeInsets.only(top: 190.0),
//      height: 110.0,
//      decoration: new BoxDecoration(
//        gradient: new LinearGradient(
//          colors: <Color>[
//            new Color(0x00736AB7),
//            new Color(0xFF736AB7)
//          ],
//          stops: [0.0, 0.9],
//          begin: const FractionalOffset(0.0, 0.0),
//          end: const FractionalOffset(0.0, 1.0),
//        ),
//      ),
//    );
//  }
//
//  Container _getContent() {
//    final _overviewTitle = "Overview".toUpperCase();
//    return new Container(
//      child: new ListView(
//        padding: new EdgeInsets.fromLTRB(0.0, 72.0, 0.0, 32.0),
//        children: <Widget>[
//          new BrandListCard(planet,
//            horizontal: false,
//          ),
//          new Container(
//            padding: new EdgeInsets.symmetric(horizontal: 32.0),
//            child: new Column(
//              crossAxisAlignment: CrossAxisAlignment.start,
//              children: <Widget>[
//                new Text(_overviewTitle,
//                  style: Style.headerTextStyle,),
//                new Separator(),
//                new Text(
//                    planet.description, style: Style.commonTextStyle),
//              ],
//            ),
//          ),
//        ],
//      ),
//    );
//  }
//
//  Container _getToolbar(BuildContext context) {
//    return new Container(
//      margin: new EdgeInsets.only(
//          top: MediaQuery
//              .of(context)
//              .padding
//              .top),
//      child: new BackButton(color: Colors.white),
//    );
//  }
//}

import 'package:flutter/material.dart';

class TwitterProfilePage extends StatefulWidget {
  @override
  _TwitterProfilePageState createState() => _TwitterProfilePageState();
}

class _TwitterProfilePageState extends State<TwitterProfilePage> {
  static double avatarMaximumRadius = 40.0;
  static double avatarMinimumRadius = 15.0;
  double avatarRadius = avatarMaximumRadius;
  double expandedHeader = 170.0;
  double translate = -avatarMaximumRadius;
  bool isExpanded = true;
  double offset = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
      body: NotificationListener<ScrollUpdateNotification>(
        onNotification: (scrollNotification) {
          final pixels = scrollNotification.metrics.pixels;

          // check if scroll is vertical ( left to right OR right to left)
          final scrollTabs = (scrollNotification.metrics.axisDirection ==
                  AxisDirection.right ||
              scrollNotification.metrics.axisDirection == AxisDirection.left);

          if (!scrollTabs) {
            // and here prevents animation of avatar when you scroll tabs
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
          return isExpanded;
        },
        child: DefaultTabController(
          length: 0,
          child: CustomScrollView(
            physics: ClampingScrollPhysics(),
            slivers: <Widget>[
              SliverAppBar(
                expandedHeight: MediaQuery.of(context).size.height * 0.3,//expandedHeader,
                backgroundColor: Colors.grey,
                leading: BackButton(
                  color: isExpanded ? Colors.black : Colors.black,
                ),
                pinned: true,
                elevation: 5.0,
                forceElevated: true,
                flexibleSpace: Container(
                  decoration: BoxDecoration(
                      color:
                          isExpanded ? Colors.transparent : Colors.white,
                      image: isExpanded
                          ? DecorationImage(
                              fit: BoxFit.cover,
                              alignment: Alignment.bottomCenter,
                              image:
                                  AssetImage("assets/imgBrand/fendiHeader.png"))
                          : null),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: isExpanded
                        ? Transform(
                            transform: Matrix4.identity()
                              ..translate(0.0, avatarMaximumRadius),
                            child: Hero(
                              tag: "",
                              child: MyAvatar(
                                size: avatarRadius,
                              ),
                            ),
                          )
                        : SizedBox.shrink(),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 30.0, left: 10, right: 10),
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
                              : Hero(
                                  tag: "",
                                  child: MyAvatar(
                                    size: avatarMinimumRadius,
                                  ),
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
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: TwitterTabs(70.0),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return Tweet();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TwitterTabs extends SliverPersistentHeaderDelegate {
  final double size;

  TwitterTabs(this.size);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.black,
      height: size,
      child: Text("DropDown", style: TextStyle(color: Colors.white),),
    );
  }

  @override
  double get maxExtent => size;

  @override
  double get minExtent => size;

  @override
  bool shouldRebuild(TwitterTabs oldDelegate) {
    return oldDelegate.size != size;
  }
}

class TwitterHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, top: 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Flutter",
            style: TextStyle(
                color: Colors.black,
                fontSize: 22.0,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            "@flutterio",
            style: TextStyle(
                color: Colors.black87,
                fontSize: 15.0,
                fontWeight: FontWeight.w200),
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

class Tweet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
//      decoration: BoxDecoration(
//        border:
//      ),
      child: ListTile(
        contentPadding: EdgeInsets.all(16.0),
        leading: CircleAvatar(
          backgroundImage: AssetImage("images/twitter_flutter_logo.jpg"),
        ),
        title: RichText(
          text: TextSpan(
              text: "Flutter",
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16),
              children: [
                TextSpan(
                    text: "  @flutterio  04 Dec 18",
                    style: TextStyle(color: Colors.grey, fontSize: 14)),
              ]),
        ),
        subtitle: Text(
          "We just announced the general availability of Flutter 1.0 at #FlutterLive! \n\nThank you to all the amazing engineers who made this possible and to our awesome community for their support.",
          style: TextStyle(color: Colors.white),
        ),
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
            backgroundImage: AssetImage("images/twitter_flutter_logo.jpg"),
          ),
        ),
      ),
    );
  }
}
