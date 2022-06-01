import 'package:flutter/gestures.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:pro8_tech/Testimonials/full_testimonial.dart';
import 'package:pro8_tech/components/accent_bar_mobile.dart';

import '../models/testimonials.dart';

class TestimonialMobile extends StatefulWidget {
  const TestimonialMobile({
    Key? key,
    required this.id,
    required this.picture,
    required this.testimonial,
    required this.testimonialFull,
    required this.name,
    required this.location,
  }) : super(key: key);

  final int id;
  final String picture;
  final String testimonial;
  final String testimonialFull;
  final String name;
  final String location;

  @override
  State<TestimonialMobile> createState() => _TestimonialMobileState();
}

class _TestimonialMobileState extends State<TestimonialMobile> {
  int? index;
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
                    image: AssetImage(widget.picture), fit: BoxFit.cover)),
          ),
          SizedBox(height: 16),
          AccentBarMobile(),
          SizedBox(height: 10),
          Container(
            height: 200,
            width: 250,
            child: RichText(
                softWrap: true,
                textAlign: TextAlign.center,
                text: TextSpan(
                    style: GoogleFonts.ubuntu(
                      fontSize: 18,
                      height: 1.5,
                      fontWeight: FontWeight.w100,
                      color: Colors.white,
                    ),
                    children: [
                      TextSpan(
                        text: widget.testimonial,
                        style: GoogleFonts.nunito(
                          fontSize: 18,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                          text: "show more...",
                          style: GoogleFonts.nunito(
                            fontSize: 18,
                            color: Colors.green,
                            fontWeight: FontWeight.w400,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              setState(() {
                                index = widget.id;
                              });

                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Dialog(
                                      elevation: 6,
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(6)),
                                      child: Container(
                                        height: 500,
                                        child: FullTestimonial(
                                          picture: widget.picture,
                                          testimonial: widget.testimonialFull,
                                          name: widget.name,
                                          location: widget.location,
                                        ),
                                      ),
                                    );
                                  });
                            })
                    ])),
          ),
          SizedBox(height: 10),
          AccentBarMobile(),
          SizedBox(height: 15),
          Text(
            widget.name,
            style: GoogleFonts.nunito(
                fontWeight: FontWeight.w600,
                color: Colors.grey[800],
                fontSize: 16),
          ),
          SizedBox(height: 4),
          Text(
            widget.location,
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
