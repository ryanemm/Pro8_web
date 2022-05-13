import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro8_tech/components/simple_button.dart';
import 'package:pro8_tech/utils/responsiveLayout.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  // final navLinks = ["Home", "Products", "Features", "Contacts"];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 45, vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset("assets/images/PRIM_logo.png", height: 80),
              SizedBox(width: 16),
              Text(
                "Pro8 Innovetics",
                style: GoogleFonts.ubuntu(
                  fontSize: 26,
                ),
              )
            ],
          ),
          if (!ResponsiveLayout.isSmallScreen(context))
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Text("About", style: GoogleFonts.ubuntu(fontSize: 18)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child:
                      Text("Projects", style: GoogleFonts.ubuntu(fontSize: 18)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child:
                      Text("New Tech", style: GoogleFonts.ubuntu(fontSize: 18)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child:
                      Text("Orders", style: GoogleFonts.ubuntu(fontSize: 18)),
                ),
                SizedBox(width: 24),
                SimpleButton(
                  text: "Contact",
                  shadowColor: Colors.grey.shade500,
                  ftSize: 18,
                  buttonColor2: Color.fromARGB(255, 3, 114, 105),
                  buttonColor1: Color.fromARGB(255, 30, 235, 47),
                )
              ],
            )
          else
            Icon(Icons.menu)
        ],
      ),
    );
  }
}
