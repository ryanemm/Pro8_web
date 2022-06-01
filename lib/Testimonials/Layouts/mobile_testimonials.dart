import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro8_tech/Testimonials/full_testimonial.dart';
import 'package:pro8_tech/Testimonials/testimonial_mobile.dart';
import 'package:pro8_tech/models/testimonials.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

class MobileTestimonialsSection extends StatefulWidget {
  const MobileTestimonialsSection({Key? key}) : super(key: key);

  @override
  _MobileTestimonialsSectionState createState() =>
      _MobileTestimonialsSectionState();
}

class _MobileTestimonialsSectionState extends State<MobileTestimonialsSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 50, top: 75),
      child: Column(
        children: [
          Text(
            "CLIENT \n TESTIMONIALS",
            textAlign: TextAlign.center,
            style: GoogleFonts.ubuntu(
              fontSize: 32,
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 3, 114, 105),
            ),
          ),
          SizedBox(height: 0),
          YaruCarousel(
              autoScroll: true,
              autoScrollDuration: Duration(milliseconds: 3000),
              // height: 450,
              width: MediaQuery.of(context).size.width,
              children: [
                TestimonialMobile(
                  id: testimonials[1].id - 1,
                  picture: testimonials[1].image,
                  testimonial: testimonials[1].testimonialPreview,
                  testimonialFull: testimonials[1].testimonialFull,
                  name: testimonials[1].name,
                  location: testimonials[1].location,
                ),
                TestimonialMobile(
                  id: testimonials[1].id - 1,
                  picture: testimonials[2].image,
                  testimonial: testimonials[2].testimonialPreview,
                  testimonialFull: testimonials[2].testimonialFull,
                  name: testimonials[2].name,
                  location: testimonials[2].location,
                ),
                TestimonialMobile(
                  id: testimonials[1].id - 1,
                  picture: testimonials[3].image,
                  testimonial: testimonials[3].testimonialPreview,
                  testimonialFull: testimonials[3].testimonialFull,
                  name: testimonials[3].name,
                  location: testimonials[3].location,
                ),
                TestimonialMobile(
                  id: testimonials[1].id - 1,
                  picture: testimonials[0].image,
                  testimonial: testimonials[0].testimonialPreview,
                  testimonialFull: testimonials[0].testimonialFull,
                  name: testimonials[0].name,
                  location: testimonials[0].location,
                ),
              ]),
          SizedBox(height: 24),
        ],
      ),
    );
  }
}
