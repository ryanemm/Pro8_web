import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro8_tech/components/simple_button.dart';

class MobileEventsSection extends StatelessWidget {
  const MobileEventsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      decoration: BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage("assets/images/field.jpg"),
      )),
      child: Container(
          padding: EdgeInsets.only(top: 100, bottom: 50, left: 50, right: 50),
          alignment: Alignment.center,
          color: Colors.black.withOpacity(0.7),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              Text(
                "Tell us about any challenges you face on your farm and we will come up with an efficient solution to increase your productivity and make your processes easier",
                style: GoogleFonts.ubuntu(
                  fontSize: 18,
                  fontWeight: FontWeight.w100,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              SimpleButton(
                text: "Get in touch...",
                shadowColor: Colors.transparent,
                buttonColor2: Color.fromARGB(255, 3, 114, 105),
                buttonColor1: Color.fromARGB(255, 30, 235, 47),
              )
            ],
          )),
    );
  }
}
