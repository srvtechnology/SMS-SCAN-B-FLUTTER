import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:async';

import 'package:school_management/routes/schoolCode_page.dart';

class LandingPage extends StatefulWidget {
  static String routename = "/landing";
  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  @override
  void initState(){
    super.initState();
    startTime();
  }
  startTime() async {
    var duration = new Duration(seconds: 6);
    return new Timer(duration, route);
  }
  route() {
    Navigator.pushReplacementNamed(context, '/schoolcode');
  }
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        decoration:BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Color(0xffECB50F),
              Color(0xffF4B545)
            ]
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20,top: 20,bottom: 25),
              child: Image.asset('assets/nyoLogo.png'),
            ),
            Stack(
              children: [
                Align(
                    alignment: Alignment.centerLeft+Alignment(0.2,0),
                    child: SvgPicture.asset('assets/student.svg')),
                Align(
                    alignment: Alignment.center+Alignment(0,0.2),
                    child: SvgPicture.asset('assets/parents.svg')),
                Align(
                    alignment: Alignment.centerRight+Alignment(-0.1,0),
                    child: SvgPicture.asset('assets/teacher.svg')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
