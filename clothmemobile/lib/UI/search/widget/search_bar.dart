import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final String name;
  const SearchBar({this.name}) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50.0,
        decoration: BoxDecoration(
            color: Colors.white,
            border:
                Border.all(color: Colors.grey.withOpacity(0.2), width: 1.0)),
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
                  hintText: "Search Brands",
                  hintStyle: TextStyle(color: Colors.black38, fontSize: 14.0)),
            ),
          ),
        ));
  }
}
