import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro8_tech/Contact/Layouts/contact_section.dart';
import 'package:pro8_tech/Events/Layouts/events_section.dart';
import 'package:pro8_tech/Hero/Layouts/desktop_hero.dart';
import 'package:pro8_tech/Hero/Layouts/desktop_hero.dart';
import 'package:pro8_tech/Hero/hero_section.dart';
import 'package:pro8_tech/Innovations/innovations_section.dart';
import 'package:pro8_tech/Vision/vision_section.dart';
import 'package:pro8_tech/Vision/vision_section.dart';
import 'package:pro8_tech/WIdgets/navbar.dart';
import 'package:pro8_tech/footer_section.dart';
import 'package:pro8_tech/utils/responsiveLayout.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'News/Layouts/news_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    print(MediaQuery.of(context).size.width);
    return ResponsiveLayout(
        largeScreen: LargeScreen(),
        mediumScreen: MediumScreen(),
        smallScreen: SmallScreen(
          controller: ScrollController(),
        ));
  }
}

class SmallScreen extends StatelessWidget {
  const SmallScreen({Key? key, required this.controller}) : super(key: key);
  static final ItemScrollController itemScrollController =
      ItemScrollController();
  static final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();

  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    List<Widget> sectionsMobile = [
      HeroSection(),
      VisionSection(),
      InnovationsSection(),
      NewsSection(),
      EventsSection(),
      ContactSection(),
      Footer()
    ];

    return Scaffold(
      // appBar: mobileBar(context),
      drawer: Container(
        width: 200,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
          child: Drawer(
            backgroundColor: Colors.white.withOpacity(0.9),
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                    decoration: BoxDecoration(color: Colors.grey[900]),
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                    child: Image.asset("assets/images/PRIM_logo.png")),
                ListTile(
                  title: Text(
                    "Our Vision",
                    style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    itemScrollController.scrollTo(
                        index: 2, duration: Duration(seconds: 2));
                  },
                ),
                ListTile(
                  title: Text(
                    "Latest Innovations",
                    style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    itemScrollController.scrollTo(
                        index: 3, duration: Duration(seconds: 1));
                  },
                ),
                ListTile(
                  title: Text(
                    "News",
                    style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    itemScrollController.scrollTo(
                        index: 4, duration: Duration(seconds: 1));
                  },
                ),
                ListTile(
                  title: Text(
                    "Events",
                    style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    itemScrollController.scrollTo(
                        index: 5, duration: Duration(seconds: 1));
                  },
                ),
                ListTile(
                  title: Text(
                    "Contact Us",
                    style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    itemScrollController.scrollTo(
                        index: 6, duration: Duration(seconds: 1));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.grey[200],
      body: Container(
          child: Stack(children: [
        ScrollablePositionedList.builder(
          itemScrollController: itemScrollController,
          itemPositionsListener: itemPositionsListener,
          itemCount: 7,
          itemBuilder: (BuildContext context, int index) {
            return sectionsMobile.elementAt(index);
          },
        ),
        const NavBar()
      ])),
    );
  }

  void scrollToPosition(double position) {
    final double section = position;

    controller.jumpTo(section);
  }
}

class MediumScreen extends StatelessWidget {
  const MediumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> sectionsDesktop = [
      HeroSection(),
      VisionSection(),
      InnovationsSection(),
      NewsSection(),
      EventsSection(),
      ContactSection(),
      Footer()
    ];

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Container(
          child: Stack(children: [
        Scrollbar(
          thumbVisibility: true,
          //showTrackOnHover: true,
          child: ListView.builder(
            itemCount: 6,
            itemBuilder: (BuildContext context, int index) {
              return sectionsDesktop.elementAt(index);
            },
          ),
        ),
      ])),
    );
  }
}

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> sectionsDesktop = [
      HeroSection(),
      VisionSection(),
      InnovationsSection(),
      NewsSection(),
      EventsSection(),
      ContactSection(),
      Footer()
    ];

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Container(
          child: Stack(children: [
        Scrollbar(
          thumbVisibility: true,
          //showTrackOnHover: true,
          child: ListView.builder(
            itemCount: 7,
            itemBuilder: (BuildContext context, int index) {
              return sectionsDesktop.elementAt(index);
            },
          ),
        ),
        const NavBar()
      ])),
    );
  }
}







    /*List<Widget> sectionsDesktop = [
      NavBar(),
      HeroSection(),
      VisionSection(),
      InnovationsSection(),
      NewsSection(),
      EventsSection(),
      ContactSection(),
      Footer()
    ];*/