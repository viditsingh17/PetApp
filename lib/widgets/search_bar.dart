import 'package:PetApp/configuration.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: customShadow,
      ),
      child: Row(
        children: [
          Icon(CupertinoIcons.search),
          Expanded(
            child: TextField(
              autofocus: false,
              decoration: InputDecoration(
                hintText: 'Search pet to adopt',
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          Icon(CupertinoIcons.slider_horizontal_3),
        ],
      ),
    );
  }
}
