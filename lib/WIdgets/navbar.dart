import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro8_tech/WIdgets/NavBar/desktop_navBar.dart';
import 'package:pro8_tech/WIdgets/NavBar/mobile_navBar.dart';
import 'package:pro8_tech/components/simple_button.dart';
import 'package:pro8_tech/utils/responsiveLayout.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  // final navLinks = ["Home", "Products", "Features", "Contacts"];

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        largeScreen: DesktopNavBar(),
        mediumScreen: MobileNavBar(),
        smallScreen: MobileNavBar());
  }
}
