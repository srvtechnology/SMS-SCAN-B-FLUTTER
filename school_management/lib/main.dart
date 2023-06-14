import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:school_management/routes/addHomework_screen.dart';
import 'package:school_management/routes/attendance_screen.dart';
import 'package:school_management/routes/grades_screen.dart';
import 'package:school_management/routes/individualGrade_screen.dart';
import 'package:school_management/routes/main_page.dart';
import 'package:school_management/routes/splashscreen.dart';
import 'package:school_management/routes/schoolCode_page.dart';
import 'package:school_management/routes/IndividualSelect_page.dart';
import 'package:school_management/routes/individualCode_page.dart';
import 'package:school_management/routes/homework_page.dart';
import 'package:school_management/routes/teachersLanding_screen.dart';

void main() {
  runApp(DevicePreview(builder: (context)=>MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NedUp',
      initialRoute:GradesScreen.routename,
      locale: DevicePreview.locale(context),
      useInheritedMediaQuery: true,
      builder: DevicePreview.appBuilder,
      routes: {
        SplashScreen.routename:(context)=>SplashScreen(),
        SchoolLoginPage.routename:(context)=>SchoolLoginPage(),
        IndividualSelectPage.routename:(context)=>IndividualSelectPage(),
        IndividualCodePage.routename:(context)=>IndividualCodePage(),
        MainPage.routename:(context)=>MainPage(),
        HomeWorkPage.routename:(context)=>HomeWorkPage(),
        GradesScreen.routename:(context)=>GradesScreen(),
        AttendanceScreen.routename:(context)=>AttendanceScreen(),
        IndividualGradeScreen.routename:(context)=>IndividualGradeScreen(),
        LandingScreen.routename:(context)=>LandingScreen(),
        AddPage.routename:(context)=>AddPage()
      },
    );
  }
}

