import 'package:flutter/material.dart';
import 'package:pro8_tech/Events/Layouts/desktop_events.dart';
import 'package:pro8_tech/Events/Layouts/mobile_events.dart';
import 'package:pro8_tech/utils/responsiveLayout.dart';

class EventsSection extends StatelessWidget {
  const EventsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        largeScreen: DesktopEventsSection(),
        mediumScreen: MobileEventsSection(),
        smallScreen: MobileEventsSection());
  }
}
