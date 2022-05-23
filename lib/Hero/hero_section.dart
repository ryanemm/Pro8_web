import 'package:flutter/material.dart';
import 'package:pro8_tech/Hero/Layouts/desktop_hero.dart';
import 'package:pro8_tech/Hero/Layouts/mobile_hero.dart';
import 'package:pro8_tech/utils/responsiveLayout.dart';

class HeroSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    print(screenSize.width);

    return ResponsiveLayout(
      largeScreen: DesktopHeroSection(),
      mediumScreen: MobileHeroSection(),
      smallScreen: MobileHeroSection(),
    );
  }
}
