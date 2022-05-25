import 'package:flutter/material.dart';
import 'package:pro8_tech/Innovations/Layouts/desktop_innovations.dart';
import 'package:pro8_tech/Innovations/Layouts/mobile_innovations.dart';
import 'package:pro8_tech/utils/responsiveLayout.dart';

class InnovationsSection extends StatelessWidget {
  const InnovationsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: DesktopInnovationsSection(),
      mediumScreen: MobileInnovationsSection(),
      smallScreen: MobileInnovationsSection(),
    );
  }
}
