import 'package:flutter/material.dart';
import 'package:school_management/routes/main_page.dart';
import 'package:school_management/routes/splashscreen.dart';
import 'package:school_management/routes/schoolCode_page.dart';
import 'package:school_management/routes/IndividualSelect_page.dart';
import 'package:school_management/routes/individualCode_page.dart';

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
      initialRoute: MainPage.routename,
      routes: {
        SplashScreen.routename:(context)=>SplashScreen(),
        SchoolLoginPage.routename:(context)=>SchoolLoginPage(),
        IndividualSelectPage.routename:(context)=>IndividualSelectPage(),
        IndividualCodePage.routename:(context)=>IndividualCodePage(),
        MainPage.routename:(context)=>MainPage()
      },
    );
  }
}

