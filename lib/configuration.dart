import 'package:flutter/cupertino.dart';
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

List<Map> dogs = [
  {
    "id": "1",
    "name": "Bruno",
    "imagePath": "images/dog0.png",
    "breed": "Beagle",
    "gender": "male",
    "age": "0",
    "distance": "6.0"
  },
  {
    "id": "2",
    "name": "Miko",
    "imagePath": "images/dog1.png",
    "breed": "Labrador",
    "gender": "female",
    "age": "3",
    "distance": "10.2"
  },
  {
    "id": "3",
    "name": "Edgar",
    "imagePath": "images/dog2.png",
    "breed": "Pug",
    "gender": "male",
    "age": "1",
    "distance": "2.0"
  },
  {
    "id": "4",
    "name": "Brutus",
    "imagePath": "images/dog3.png",
    "breed": "German Shephard",
    "gender": "male",
    "age": "1",
    "distance": "3.0"
  },
  {
    "id": "5",
    "name": "Thunder",
    "imagePath": "images/dog4.png",
    "breed": "Greyhound",
    "gender": "female",
    "age": "3",
    "distance": "5.6"
  },
  {
    "id": "6",
    "name": "Chatus",
    "imagePath": "images/dog5.png",
    "breed": "Labrador",
    "gender": "male",
    "age": "8",
    "distance": "16.0"
  },
  {
    "id": "7",
    "name": "Lucky",
    "imagePath": "images/dog6.png",
    "breed": "Bull Dog",
    "gender": "female",
    "age": "10",
    "distance": "2"
  },
  {
    "id": "8",
    "name": "Cheese",
    "imagePath": "images/dog7.png",
    "breed": "Doberman",
    "gender": "female",
    "age": "5",
    "distance": "1"
  },
  {
    "id": "9",
    "name": "Pixie",
    "imagePath": "images/dog8.png",
    "breed": "Cavalier King Charles Spaniel",
    "gender": "male",
    "age": "2",
    "distance": "20.0"
  },
  {
    "id": "10",
    "name": "Bolt",
    "imagePath": "images/dog9.png",
    "breed": "German Shephard",
    "gender": "female",
    "age": "4",
    "distance": "1"
  },
];

List<Map> drawerItems = [
  {
    "icon": CupertinoIcons.house,
    "title": "Adoption",
  },
  {
    "icon": CupertinoIcons.envelope_open,
    "title": "Donation",
  },
  {
    "icon": CupertinoIcons.plus,
    "title": "Add Pet",
  },
  {
    "icon": CupertinoIcons.heart,
    "title": "Favourites",
  },
  {
    "icon": CupertinoIcons.tray,
    "title": "Messages",
  },
  {
    "icon": CupertinoIcons.person,
    "title": "Profile",
  }
];
