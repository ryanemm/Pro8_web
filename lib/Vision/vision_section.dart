import 'package:flutter/material.dart';
import 'package:pro8_tech/Vision/Layouts/desktop_vision.dart';
import 'package:pro8_tech/Vision/Layouts/mobile_vision.dart';
import 'package:pro8_tech/utils/responsiveLayout.dart';

class VisionSection extends StatelessWidget {
  const VisionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        largeScreen: DesktopVisionSection(),
        mediumScreen: MobileVisionSection(),
        smallScreen: MobileVisionSection());
  }
}
