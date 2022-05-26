import 'package:flutter/material.dart';
import 'package:pro8_tech/Contact/contact_section.dart';
import 'package:pro8_tech/Events/events_section.dart';
import 'package:pro8_tech/Hero/Layouts/desktop_hero.dart';
import 'package:pro8_tech/Hero/hero_section.dart';
import 'package:pro8_tech/Innovations/innovations_section.dart';
import 'package:pro8_tech/Testimonials/testimonials_section.dart';
import 'package:pro8_tech/Vision/vision_section.dart';
import 'package:pro8_tech/WIdgets/navbar.dart';
import 'package:pro8_tech/footer_section.dart';
import 'package:pro8_tech/home_screen.dart';

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
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}
