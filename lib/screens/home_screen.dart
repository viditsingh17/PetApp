import 'package:PetApp/configuration.dart';
import 'package:PetApp/widgets/pet_categories.dart';
import 'package:PetApp/widgets/pet_category_display.dart';
import 'package:PetApp/widgets/search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  bool showDrawer = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        if (showDrawer) {
          setState(() {
            xOffset = 0;
            yOffset = 0;
            scaleFactor = 1;
            showDrawer = false;
          });
        }
      },
      child: AnimatedContainer(
        duration: Duration(
          milliseconds: 250,
        ),
        transform: Matrix4.translationValues(xOffset, yOffset, 0)
          ..scale(scaleFactor)
          ..rotateY(showDrawer ? -0.2 : 0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:
              showDrawer ? BorderRadius.circular(40) : BorderRadius.circular(0),
        ),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        icon: showDrawer
                            ? Icon(CupertinoIcons.chevron_left)
                            : Icon(Icons.menu),
                        onPressed: () {
                          setState(() {
                            if (!showDrawer) {
                              xOffset = size.width * 0.6; //280;
                              yOffset = size.height / 5;
                              scaleFactor = 0.6;
                              showDrawer = true;
                            } else {
                              xOffset = 0;
                              yOffset = 0;
                              scaleFactor = 1;
                              showDrawer = false;
                            }
                          });
                        }),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Location',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_pin,
                              color: primaryGreen,
                              size: 16,
                            ),
                            // Text('Hello'),
                            RichText(
                              text: TextSpan(
                                  text: 'Delhi, ',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                  children: [
                                    TextSpan(
                                      text: 'India',
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ]),
                            ),
                          ],
                        ),
                      ],
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('images/profile.jpg'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SearchBar(),
              SizedBox(
                height: 20,
              ),
              PetCategories(),
              PetCategoryDisplay(),
            ],
          ),
        ),
      ),
    );
  }
}
