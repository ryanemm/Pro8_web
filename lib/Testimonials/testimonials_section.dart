import 'package:flutter/material.dart';
import 'package:pro8_tech/Testimonials/Layouts/desktop_testimonials.dart';
import 'package:pro8_tech/Testimonials/Layouts/mobile_testimonials.dart';
import 'package:pro8_tech/utils/responsiveLayout.dart';

class TestimonialsSection extends StatelessWidget {
  const TestimonialsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        largeScreen: DesktopTestimonialsSection(),
        mediumScreen: MobileTestimonialsSection(),
        smallScreen: MobileTestimonialsSection());
  }
}
