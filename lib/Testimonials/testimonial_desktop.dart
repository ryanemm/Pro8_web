import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:pro8_tech/components/accent_bar_mobile.dart';

class TestimonialDesktop extends StatelessWidget {
  const TestimonialDesktop({
    Key? key,
    required this.picture,
    required this.testimonial,
    required this.name,
    required this.location,
  }) : super(key: key);

  final String picture;
  final String testimonial;
  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    Size _screenSize = MediaQuery.of(context).size;
    return Container(
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(50)),
                image: DecorationImage(
                    image: AssetImage(picture), fit: BoxFit.cover)),
          ),
          SizedBox(height: 16),
          AccentBarMobile(),
          SizedBox(height: 10),
          Container(
            height: 250,
            width: 500,
            child: Text(
              testimonial,
              textAlign: TextAlign.center,
              softWrap: true,
              style: GoogleFonts.nunito(
                fontSize: 20,
                color: Colors.grey[800],
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: 10),
          AccentBarMobile(),
          SizedBox(height: 15),
          Text(
            name,
            style: GoogleFonts.nunito(
                fontWeight: FontWeight.w600,
                color: Colors.grey[800],
                fontSize: 16),
          ),
          SizedBox(height: 4),
          Text(
            location,
            style: GoogleFonts.nunito(
                fontWeight: FontWeight.w600,
                color: Colors.grey[800],
                fontSize: 16),
          ),
        ],
      ),
    );
  }
}
