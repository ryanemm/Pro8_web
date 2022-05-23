import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileNavBar extends StatefulWidget {
  const MobileNavBar({Key? key}) : super(key: key);

  @override
  _MobileNavBarState createState() => _MobileNavBarState();
}

class _MobileNavBarState extends State<MobileNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset("assets/images/PRIM_logo.png", height: 60),
          SizedBox(width: 8),
          /*Text(
            "Pro8 Innovetics",
            style: GoogleFonts.ubuntu(
              fontSize: 16,
            ),
          ),*/
          Icon(Icons.menu)
        ],
      ),
    );
  }
}
