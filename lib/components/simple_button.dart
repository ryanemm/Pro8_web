import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:pro8_tech/home_screen.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class SimpleButton extends StatefulWidget {
  const SimpleButton({
    Key? key,
    this.text = "Button",
    this.ftSize = 16.0,
    this.buttonColor = Colors.blue,
    this.textColor = Colors.white,
    this.padding = 20.0,
    this.buttonColor1 = Colors.purple,
    this.buttonColor2 = Colors.blue,
    this.shadowColor = Colors.blue,
    this.offsetX = 4,
    this.offsetY = 7,
    // this.sectionIndex = 1,

    // this.method = doSomething,
  }) : super(key: key);

  final String text;
  final double ftSize;
  final Color buttonColor;
  final Color textColor;
  final double padding;
  final Color buttonColor1;
  final Color buttonColor2;
  final Color shadowColor;
  final double offsetY;
  final double offsetX;
  // final int sectionIndex;

  @override
  State<SimpleButton> createState() => _SimpleButtonState();
}

class _SimpleButtonState extends State<SimpleButton> {
  // final Function method;
  ItemScrollController scrollController = SmallScreen.itemScrollController;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        //width: 100,
        padding: EdgeInsets.symmetric(vertical: 4, horizontal: widget.padding),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                offset: Offset(widget.offsetX, widget.offsetY),
                color: widget.shadowColor,
                blurRadius: 8,
                spreadRadius: 0)
          ],
          gradient: LinearGradient(
              colors: [widget.buttonColor1, widget.buttonColor2]),
          borderRadius: BorderRadius.circular(6),
        ),
        child: (Text(
          widget.text,
          style: GoogleFonts.ubuntu(
              fontSize: widget.ftSize,
              fontWeight: FontWeight.w400,
              color: widget.textColor,
              letterSpacing: 1.0),
        )),
      ),
    );
  }
}

doSomething() {}
