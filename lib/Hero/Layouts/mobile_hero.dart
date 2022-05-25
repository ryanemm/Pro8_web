import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro8_tech/components/simple_button.dart';

class MobileHeroSection extends StatelessWidget {
  const MobileHeroSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screen_size = MediaQuery.of(context).size;
    return Container(
      height: screen_size.height * 0.6,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/header_2.jpg"),
              fit: BoxFit.cover)),
      child: Container(
          padding: EdgeInsets.only(top: 100, bottom: 50, left: 50, right: 50),
          alignment: Alignment.center,
          color: Colors.black.withOpacity(0.7),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Agricultural tech rising...",
                style: GoogleFonts.ubuntu(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              SizedBox(height: 10),
              Text(
                "Pro8 is at the forefront of agricultural technology, pioneering solutions in poultry, horticulture and commercial crop farming. Remote monitoring, process automation, data collection and analysis. We are increasing agricultural efficiency, productivity and ease of management.",
                style: GoogleFonts.ubuntu(
                  fontSize: 14,
                  fontWeight: FontWeight.w100,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              SimpleButton(
                text: "Learn More",
                shadowColor: Colors.transparent,
                buttonColor2: Color.fromARGB(255, 3, 114, 105),
                buttonColor1: Color.fromARGB(255, 30, 235, 47),
              )
            ],
          )),
    );
  }
}
