import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro8_tech/components/simple_button.dart';
import 'package:pro8_tech/utils/responsiveLayout.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: _LargeChild(),
      smallScreen: _SmallChild(),
      mediumScreen: _MediumChild(),
    );
  }
}

class _LargeChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.88,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage("assets/images/header_2.jpg"),
      )),
      child: Stack(children: [
        Positioned(
          left: 0,
          top: 0,
          child: Container(
              padding:
                  EdgeInsets.only(top: 150, bottom: 150, left: 100, right: 250),
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height * 0.88,
              width: MediaQuery.of(context).size.width * 0.6,
              color: Colors.black.withOpacity(0.7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Agricultural tech rising...",
                    style: GoogleFonts.ubuntu(
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Pro8 is at the forefront of agricultural technology, pioneering solutions in poultry, horticulture and commercial crop farming. Remote monitoring, process automation, data collection and analysis. We are increasing agricultural efficiency, productivity and ease of management.",
                    style: GoogleFonts.ubuntu(
                        fontSize: 18,
                        fontWeight: FontWeight.w100,
                        color: Colors.white),
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
        ),
      ]),
    );
  }
}

class _MediumChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class _SmallChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
