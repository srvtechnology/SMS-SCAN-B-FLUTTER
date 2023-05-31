import 'package:flutter/material.dart';
import 'package:school_management/routes/splashscreen.dart';
import 'package:school_management/routes/schoolCode_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NedUp',
      initialRoute: LandingPage.routename,
      routes: {
        LandingPage.routename:(context)=>LandingPage(),
        SchoolCodePage.routename:(context)=>SchoolCodePage()
      },

    );
  }
}

