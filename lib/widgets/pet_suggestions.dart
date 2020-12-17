import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../configuration.dart';

class PetSuggestions extends StatelessWidget {
  const PetSuggestions({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 240,
            child: Stack(
              children: [
                Container(
                  // height: 200,
                  margin: EdgeInsets.only(
                    top: 70,
                    bottom: 20,
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: size.width * 0.48,
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Sola',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Icon(
                                    FontAwesomeIcons.venus,
                                    size: 18,
                                    color: Colors.black54,
                                  )
                                ],
                              ),
                              Text(
                                'Golden Retriever',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: fadedBlack,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '2 years',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: fadedBlack,
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_pin,
                                    size: 16,
                                    color: primaryGreen,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Distance: 2.3 Km',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: fadedBlack,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: customShadow,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                ),
                Container(
                  width: size.width * 0.48,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[200],
                          boxShadow: customShadow,
                          borderRadius: BorderRadius.circular(22),
                        ),
                        margin: EdgeInsets.only(top: 50),
                      ),
                      Align(
                        child: Image.asset(
                          'images/dog8.png',
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
