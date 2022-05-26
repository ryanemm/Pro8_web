import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileVisionSection extends StatelessWidget {
  const MobileVisionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
          Text(
            "To bring luxury and productivity into farming and simplify manufacturing through automation and remote monitoring. To bring luxury and productivity into farming and simplify manufacturing through automation and remote monitoring. To bring luxury and productivity into farming and simplify manufacturing through automation and remote monitoring.",
            style: GoogleFonts.ubuntu(
              fontSize: 16,
              height: 1.5,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
