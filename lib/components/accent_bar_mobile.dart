import "package:flutter/material.dart";

class AccentBarMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4,
      width: 50,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 3, 114, 105),
          Color.fromARGB(255, 30, 235, 47)
        ]),
      ),
    );
  }
}
