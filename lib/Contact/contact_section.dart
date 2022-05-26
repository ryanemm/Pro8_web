import 'package:flutter/material.dart';
import 'package:pro8_tech/Contact/Layouts/desktop_contact.dart';
import 'package:pro8_tech/Contact/Layouts/mobile_contact.dart';
import 'package:pro8_tech/utils/responsiveLayout.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        largeScreen: DesktopContactSection(),
        mediumScreen: MobileContactSection(),
        smallScreen: MobileContactSection());
  }
}
