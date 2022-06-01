import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileVisionSection extends StatelessWidget {
  const MobileVisionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      padding: EdgeInsets.only(top: 75, bottom: 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "assets/images/crop.png",
            height: 150,
          ),
          Container(
            width: 180,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "OUR VISION",
                  style: GoogleFonts.ubuntu(
                    fontSize: 32,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 3, 114, 105),
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  child: Text(
                    "To bring luxury and productivity into farming and simplify manufacturing through automation and remote monitoring.",
                    style: GoogleFonts.ubuntu(
                      fontSize: 18,
                      height: 1.5,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 80.3,
          )
        ],
      ),
    );
  }
}
