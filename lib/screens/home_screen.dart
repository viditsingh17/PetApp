import 'package:PetApp/configuration.dart';
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

    return AnimatedContainer(
      duration: Duration(
        milliseconds: 250,
      ),
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
      ),
      child: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      icon: showDrawer
                          ? Icon(Icons.arrow_back_ios)
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
            ],
          ),
        ),
      ),
    );
  }
}
