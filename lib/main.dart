import 'package:flutter/material.dart';
import 'package:pro8_tech/WIdgets/navbar.dart';
import 'package:pro8_tech/footer_section.dart';
import 'package:pro8_tech/innovations_section.dart';
import 'package:pro8_tech/contact_section.dart';
import 'package:pro8_tech/events_section.dart';
import 'package:pro8_tech/hero_section.dart';
import 'package:pro8_tech/vision_section.dart';
import 'package:pro8_tech/news_section.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Color(0xFFF8FBFF),
        Color(0xFFFCFDFD),
      ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              NavBar(),
              HeroSection(),
              VisionSection(),
              InnovationsSection(),
              NewsSection(),
              EventsSection(),
              ContactSection(),
              Footer()
            ],
          ),
        ),
      ),
    );
  }
}
