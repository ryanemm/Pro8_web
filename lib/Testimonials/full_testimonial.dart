import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/accent_bar_mobile.dart';

class FullTestimonial extends StatelessWidget {
  const FullTestimonial({
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
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
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
            padding: EdgeInsets.symmetric(horizontal: 10),
            // height: 300,
            child: Text(
              testimonial,
              textAlign: TextAlign.center,
              softWrap: true,
              style: GoogleFonts.nunito(
                fontSize: 14,
                color: Colors.grey[800],
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: 10),
          AccentBarMobile(),
          SizedBox(height: 15),
          TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("OK"))
        ],
      ),
    );
  }
}
