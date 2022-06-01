import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro8_tech/components/simple_button.dart';

class DesktopEventsSection extends StatelessWidget {
  const DesktopEventsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      decoration: BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage("assets/images/field.jpg"),
      )),
      child: Stack(children: [
        Positioned(
          left: 0,
          top: 0,
          child: Container(
              padding:
                  EdgeInsets.only(top: 150, bottom: 150, left: 150, right: 250),
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height * 0.88,
              width: MediaQuery.of(context).size.width * 0.6,
              color: Colors.black.withOpacity(0.6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Tell us about any challenges you face on your farm and we will come up with an efficient solution to increase your productivity and make your processes easier",
                    style: GoogleFonts.ubuntu(
                        fontSize: 18,
                        fontWeight: FontWeight.w100,
                        color: Colors.white),
                  ),
                  SizedBox(height: 16),
                  SimpleButton(
                    text: "Get in touch...",
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
