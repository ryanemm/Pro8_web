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
    return PreferredSize(
      preferredSize: Size.fromHeight(50),
      child: Container(
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: Colors.grey.shade700,
              offset: Offset(0, 1),
              blurRadius: 10,
              spreadRadius: 1)
        ]),
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
            Builder(builder: (context) {
              return GestureDetector(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: Icon(Icons.menu, color: Colors.grey[800], size: 30),
              );
            })
          ],
        ),
      ),
    );
  }
}
