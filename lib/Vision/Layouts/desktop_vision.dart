import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DesktopVisionSection extends StatelessWidget {
  const DesktopVisionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(top: 100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "assets/images/crop.png",
            height: 350,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "OUR VISION",
                style: GoogleFonts.ubuntu(
                  fontSize: 64,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 3, 114, 105),
                ),
              ),
              SizedBox(height: 24),
              Container(
                width: 600,
                child: Text(
                  "To bring luxury and productivity into farming and simplify manufacturing through automation and remote monitoring. To bring luxury and productivity into farming and simplify manufacturing through automation and remote monitoring. To bring luxury and productivity into farming and simplify manufacturing through automation and remote monitoring.",
                  style: GoogleFonts.ubuntu(
                    fontSize: 18,
                    height: 1.5,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
          Image.asset(
            "assets/images/chip.png",
            height: 300,
          ),
        ],
      ),
    );
  }
}
