import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro8_tech/components/simple_button.dart';
import 'package:pro8_tech/utils/responsiveLayout.dart';

class InnovationsSection extends StatelessWidget {
  const InnovationsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      smallScreen: _SmallChild(),
      mediumScreen: _MediumChild(),
      largeScreen: _LargeChild(),
    );
  }
}

class _LargeChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[900],
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 50, horizontal: 150),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "INNOVATIONS",
                  style: GoogleFonts.ubuntu(
                      fontSize: 64,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                SizedBox(height: 24),
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: RichText(
                      text: TextSpan(
                          style: GoogleFonts.ubuntu(
                              fontSize: 18,
                              height: 1.5,
                              fontWeight: FontWeight.w100,
                              color: Colors.white),
                          children: [
                        TextSpan(
                          text: "Poultry: ",
                          style: GoogleFonts.ubuntu(
                              fontSize: 18,
                              height: 1.5,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        TextSpan(
                            text:
                                "Hybrid gas and battery powered poultry incubators. Automatic gas self-ignition system with SMS and call alerts for emergency cases.")
                      ])),

                  /*Text(
                    "Poultry:",
                    style: GoogleFonts.ubuntu(
                        fontSize: 18,
                        height: 1.5,
                        fontWeight: FontWeight.w100,
                        color: Colors.white),
                    textAlign: TextAlign.justify,
                  ),*/
                ),
                SizedBox(height: 20),
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: RichText(
                      text: TextSpan(
                          style: GoogleFonts.ubuntu(
                              fontSize: 18,
                              height: 1.5,
                              fontWeight: FontWeight.w100,
                              color: Colors.white),
                          children: [
                        TextSpan(
                          text: "Horticulture: ",
                          style: GoogleFonts.ubuntu(
                              fontSize: 18,
                              height: 1.5,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        TextSpan(
                          text:
                              "Automated greehouse with precise climate control and remote moitoring capabilities. Minimise labour and maximise yields and productivity",
                        )
                      ])),
                )
              ],
            ),
          ),
          Container(
            child: SimpleButton(
              text: "View Projects",
              shadowColor: Colors.transparent,
              buttonColor2: Color.fromARGB(255, 3, 114, 105),
              buttonColor1: Color.fromARGB(255, 30, 235, 47),
            ),
          )
        ],
      ),
    );
  }
}

class _MediumChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class _SmallChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
