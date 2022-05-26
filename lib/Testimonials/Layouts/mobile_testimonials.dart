import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro8_tech/Testimonials/testimonial_mobile.dart';
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
      padding: EdgeInsets.symmetric(vertical: 50),
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
                  picture: "assets/images/cynthia.jpeg",
                  testimonial:
                      "My name is Cynthia Arumero. I have been a fan and user of Pro8 incubators since 2015. I started off my entrepreneurial journey with their machines starting off with a small incubator that carried around 120 chicken eggs",
                  name: "Cynthia,",
                  location: "Harare",
                ),
                TestimonialMobile(
                  picture: "assets/images/thulani.jpeg",
                  testimonial:
                      "The best decision i ever made since i started my poultry business is buying an incubator from Pro8 Innovetics. Most of the times i am far away from my project but perfect automation gives me peace of mind knowing my machine",
                  name: "Thulani,",
                  location: "Mutare",
                ),
                TestimonialMobile(
                  picture: "assets/images/kudzanai.jpg",
                  testimonial:
                      "Hello fellow farmers, i hope i find you all well. My name is Kudzanai Mungwariri, i run a hatchery bussiness in Harare, H and M hatchery. I have been using incubators from Pro Innovetics for the past 5-years.",
                  name: "Kudzanai,",
                  location: "Harare",
                ),
                TestimonialMobile(
                  picture: "assets/images/tinashe.jpg",
                  testimonial:
                      "Hie Pro8 innovetics  thank you for your hatchery service. Since I started using your Machines, our incubators are working well ….not forget about auto switch system ..now i don’t have any hustle to go check",
                  name: "Tinashe",
                  location: "Domboshawa",
                ),
              ])
        ],
      ),
    );
  }
}
