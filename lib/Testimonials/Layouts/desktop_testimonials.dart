import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro8_tech/Testimonials/testimonial_desktop.dart';
import 'package:pro8_tech/Testimonials/testimonial_mobile.dart';
import 'package:pro8_tech/components/simple_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

class DesktopTestimonialsSection extends StatefulWidget {
  @override
  _DesktopTestimonialsSectionState createState() =>
      _DesktopTestimonialsSectionState();
}

class _DesktopTestimonialsSectionState
    extends State<DesktopTestimonialsSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 50),
      child: Column(
        children: [
          Container(
            color: Colors.transparent,
            padding: EdgeInsets.symmetric(vertical: 50, horizontal: 0),
            child: Column(children: [
              Text(
                "CLIENT TESTIMONIALS",
                style: GoogleFonts.ubuntu(
                  fontSize: 64,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 3, 114, 105),
                ),
              ),
              SizedBox(height: 24),
              YaruCarousel(
                  autoScroll: true,
                  autoScrollDuration: Duration(milliseconds: 3000),
                  // height: 450,
                  width: MediaQuery.of(context).size.width,
                  children: [
                    TestimonialDesktop(
                      picture: "assets/images/cynthia.jpg",
                      testimonial:
                          "My name is Cynthia Arumero. I have been a fan and user of Pro8 incubators since 2015. I started off my entrepreneurial journey with their machines starting off with a small incubator that carried around 120 chicken eggs. With a boom in business I bought another bigger machine and several more over a period of 4-5 years till I relocated to another place. At one point I had 4 if their machines using the smaller ones as hatchers. I have referred several people over the years and will still ",
                      name: "Cynthia,",
                      location: "Harare",
                    ),
                    TestimonialDesktop(
                      picture: "assets/images/thulani.jpg",
                      testimonial:
                          "The best decision i ever made since i started my poultry business is buying an incubator from Pro8 Innovetics. Most of the times i am far away from my project but perfect automation gives me peace of mind knowing my machine gives me a return on investment.  What i really like about the machine is the seamlessly automatic changeover to gas back up system when mains power is lost and cellphone communication which keeps me in touch with my machine and projects.",
                      name: "Thulani,",
                      location: "Mutare",
                    ),
                    TestimonialDesktop(
                      picture: "assets/images/kudzanai.jpg",
                      testimonial:
                          "Hello fellow farmers, i hope i find you all well. My name is Kudzanai Mungwariri, i run a hatchery bussiness in Harare, H and M hatchery. I have been using incubators from Pro Innovetics for the past 5-years. The solar and gas back-up system is very reliable and cost-effective long-term. In this age of power-cuts and loadshedding, this system gives a farmer peace of mind knowing that your investment is secured by achieving high results regardless of weather and power interruptions. I would certainly recommend it to any aspiring chicken farmer and breeder, innovation in progress.",
                      name: "Kudzanai,",
                      location: "Harare",
                    ),
                    TestimonialDesktop(
                      picture: "assets/images/tinashe.jpg",
                      testimonial:
                          "Hie Pro8 innovetics  thank you for your hatchery service. Since I started using your Machines, our incubators are working well ….not forget about auto switch system ..now i don’t have any hustle to go check , if Zesa goes or not ..i can now use my phone to operate production 😎…keep it up good work👏👏",
                      name: "Tinashe",
                      location: "Domboshawa",
                    ),
                  ])
            ]),
          ),
        ],
      ),
    );
  }
}
