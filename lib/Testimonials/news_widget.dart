import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro8_tech/components/simple_button.dart';
import 'package:pro8_tech/home_screen.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class NewsWidget extends StatefulWidget {
  const NewsWidget({
    Key? key,
    required this.date,
    required this.summary,
    required this.title,
    required this.textFontSize,
    required this.titleFontSize,
  }) : super(key: key);
  final String date;
  final String summary;
  final String title;
  final double titleFontSize;
  final double textFontSize;

  @override
  State<NewsWidget> createState() => _NewsWidgetState();
}

class _NewsWidgetState extends State<NewsWidget> {
  ItemScrollController scrollController = SmallScreen.itemScrollController;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width * 0.4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            widget.date,
            style: GoogleFonts.ubuntu(
                color: Colors.white,
                fontSize: widget.textFontSize,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 16),
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.height * 0.8,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/images/incubator.jpg",
                    )),
                borderRadius: BorderRadius.all(Radius.circular(6))),
          ),
          SizedBox(height: 16),
          Text(
            widget.summary,
            style: GoogleFonts.ubuntu(
              color: Colors.white,
              fontSize: widget.textFontSize,
              fontWeight: FontWeight.w300,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16),
          GestureDetector(
            onTap: () {
              scrollController.scrollTo(
                  index: 5,
                  duration: Duration(seconds: 1),
                  curve: Curves.easeInOutCubic);
            },
            child: SimpleButton(
              text: "Enquire",
              shadowColor: Colors.transparent,
              buttonColor2: Color.fromARGB(255, 3, 114, 105),
              buttonColor1: Color.fromARGB(255, 30, 235, 47),
            ),
          )
        ],
      ),
    );
  }
}
