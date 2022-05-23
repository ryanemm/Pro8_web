import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro8_tech/News/news_widget.dart';
import 'package:pro8_tech/components/simple_button.dart';
import 'package:carousel_slider/carousel_slider.dart';

class NewsSection extends StatefulWidget {
  @override
  _NewsSectionState createState() => _NewsSectionState();
}

class _NewsSectionState extends State<NewsSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 50),
      child: Column(
        children: [
          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 50, horizontal: 0),
            child: Stack(children: [
              Column(
                children: [
                  Text(
                    "NEW TECH",
                    style: GoogleFonts.ubuntu(
                      fontSize: 64,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 3, 114, 105),
                    ),
                  ),
                  SizedBox(height: 24),
                  CarouselSlider(
                    items: [
                      NewsWidget(
                        title: "Auto Ignition Gas Incubators",
                        date: "13 April 2022",
                        summary:
                            "An automated system that automatically ignites the gas backup system in the event of a powercut with no human intervention",
                      ),
                      NewsWidget(
                        title: "Auto Ignition Gas Incubators",
                        date: "13 April 2022",
                        summary:
                            "An automated system that automatically ignites the gas backup system in the event of a powercut with no human intervention",
                      ),
                      NewsWidget(
                        title: "Auto Ignition Gas Incubators",
                        date: "13 April 2022",
                        summary:
                            "An automated system that automatically ignites the gas backup system in the event of a powercut with no human intervention",
                      ),
                      NewsWidget(
                        title: "Auto Ignition Gas Incubators",
                        date: "13 April 2022",
                        summary:
                            "An automated system that automatically ignites the gas backup system in the event of a powercut with no human intervention",
                      ),
                    ],
                    options: CarouselOptions(
                      // height: 500,
                      viewportFraction: 0.5,
                      // aspectRatio: 1.0,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 1500),
                    ),
                    carouselController: CarouselController(),
                  )
                ],
              ),
              Positioned(
                  left: 0,
                  child: Container(
                    width: 200,
                    height: 800,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                          Colors.white,
                          Colors.white.withOpacity(0.01)
                        ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight)),
                  )),
              Positioned(
                  right: 0,
                  child: Container(
                    width: 200,
                    height: 800,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                          Colors.white,
                          Colors.white.withOpacity(0.01)
                        ],
                            end: Alignment.centerLeft,
                            begin: Alignment.centerRight)),
                  )),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "...get all the latest updates from Pro8 Innovetics",
                  style: GoogleFonts.ubuntu(
                    fontSize: 18,
                  ),
                ),
                SizedBox(width: 20),
                Icon(
                  Icons.keyboard_arrow_right_rounded,
                  size: 50,
                ),
                SizedBox(width: 20),
                SimpleButton(
                  text: "News",
                  shadowColor: Colors.grey.shade500,
                  buttonColor2: Color.fromARGB(255, 3, 114, 105),
                  buttonColor1: Color.fromARGB(255, 30, 235, 47),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
