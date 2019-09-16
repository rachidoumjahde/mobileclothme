import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  Search({Key key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var _search = Container(
        height: 50.0,
        decoration: BoxDecoration(
            color: Colors.white,
            border:
                Border.all(color: Colors.grey.withOpacity(0.2), width: 1.0)),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Theme(
            data: ThemeData(hintColor: Colors.transparent),
            child: TextFormField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: Icon(
                    Icons.search,
                    color: Colors.black38,
                    size: 18.0,
                  ),
                  hintText: "Search Brands",
                  hintStyle: TextStyle(color: Colors.black38, fontSize: 14.0)),
            ),
          ),
        ));

    ListTile makeListTile() => ListTile( //Lesson lesson
      contentPadding:
      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      leading: Container(
        padding: EdgeInsets.only(right: 12.0),
        decoration: new BoxDecoration(
            border: new Border(
                right: new BorderSide(width: 1.0, color: Colors.white24))),
        child: Icon(Icons.autorenew, color: Colors.white),
      ),
//      title: Text(
//        lesson.title,
//        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//      ),
      // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

//      subtitle: Row(
//        children: <Widget>[
//          Expanded(
//              flex: 1,
//              child: Container(
//                // tag: 'hero',
//                child: LinearProgressIndicator(
//                    backgroundColor: Color.fromRGBO(209, 224, 224, 0.2),
//                    value: lesson.indicatorValue,
//                    valueColor: AlwaysStoppedAnimation(Colors.green)),
//              )),
//          Expanded(
//            flex: 4,
//            child: Padding(
//                padding: EdgeInsets.only(left: 10.0),
//                child: Text(lesson.level,
//                    style: TextStyle(color: Colors.white))),
//          )
//        ],
//      ),
//      trailing:
//      Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0),
//      onTap: () {
//        Navigator.push(
//            context,
//            MaterialPageRoute(
//                builder: (context) => DetailPage(lesson: lesson)));
//      },
    );

//    Card makeCard(Lesson lesson) => Card(
//          elevation: 8.0,
//          margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
//          child: Container(
//            decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
//            child: makeListTile(lesson),
//          ),
//        );

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
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            /// Calling search and grid variable
            children: <Widget>[
              _search,
            ],
          ),
        ),
      ),
    );
  }
}
