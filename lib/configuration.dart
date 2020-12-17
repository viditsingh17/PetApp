import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color primaryGreen = Color(0xff416d6d);
Color secondaryGreen = Color(0xff16a085);
Color fadedBlack = Colors.black.withAlpha(150);
List<BoxShadow> customShadow = [
  BoxShadow(
    color: Colors.grey[300],
    blurRadius: 30,
    offset: Offset(0, 10),
  ),
];

List<Map> categories = [
  {"name": "Cats", "iconPath": "images/cat.png"},
  {"name": "Dogs", "iconPath": "images/dog.png"},
  {"name": "Bunnies", "iconPath": "images/bunny.png"},
  {"name": "Birds", "iconPath": "images/bird.png"},
  {"name": "Horses", "iconPath": "images/horse.png"},
];
