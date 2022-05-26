import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Testimonials/news_widget.dart';

class MobileInnovationsSection extends StatefulWidget {
  const MobileInnovationsSection({Key? key}) : super(key: key);

  @override
  _MobileInnovationsSectionsState createState() =>
      _MobileInnovationsSectionsState();
}

class _MobileInnovationsSectionsState extends State<MobileInnovationsSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[900],
      padding: EdgeInsets.all(50),
      child: Column(
        children: [
          Text(
            "INNOVATIONS",
            style: GoogleFonts.ubuntu(
                fontSize: 32, fontWeight: FontWeight.w400, color: Colors.white),
          ),
          SizedBox(height: 16),
          RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  style: GoogleFonts.ubuntu(
                    fontSize: 14,
                    height: 1.5,
                    fontWeight: FontWeight.w100,
                    color: Colors.white,
                  ),
                  children: [
                    TextSpan(
                      text: "Poultry: ",
                      style: GoogleFonts.ubuntu(
                          fontSize: 14,
                          height: 1.5,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    TextSpan(
                        text:
                            "Hybrid gas and battery powered poultry incubators. Automatic gas self-ignition system with SMS and call alerts for emergency cases.")
                  ])),
          SizedBox(height: 16),
          NewsWidget(
            date: "15 April 2022",
            summary:
                "An automated system that automatically ignites the gas backup system in the event of a powercut with no human intervention",
            title: "Auto Ignition Gas Incubators",
            titleFontSize: 20,
            textFontSize: 14,
          ),
          SizedBox(height: 32),
          RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  style: GoogleFonts.ubuntu(
                      fontSize: 14,
                      height: 1.5,
                      fontWeight: FontWeight.w100,
                      color: Colors.white),
                  children: [
                    TextSpan(
                      text: "Horticulture: ",
                      style: GoogleFonts.ubuntu(
                          fontSize: 14,
                          height: 1.5,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    TextSpan(
                      text:
                          "Automated greehouse with precise climate control and remote moitoring capabilities. Minimise labour and maximise yields and productivity",
                    )
                  ])),
        ],
      ),
    );
  }
}
