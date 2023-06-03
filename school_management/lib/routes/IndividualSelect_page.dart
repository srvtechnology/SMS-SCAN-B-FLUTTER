import 'package:flutter/material.dart';
import 'package:school_management/layout/login_layout.dart';
import 'package:flutter_svg/svg.dart';
class IndividualSelectPage extends StatefulWidget {
  static String routename = "/select";

  @override
  State<IndividualSelectPage> createState() => _IndividualSelectPageState();
}

class _IndividualSelectPageState extends State<IndividualSelectPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return LoginLayout(
      padding: EdgeInsets.symmetric(horizontal: width*0.1,vertical: height*0.08),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/student.png'),
                    backgroundColor: Color(0xffFEC20E),
                    radius: 50,
                  ),
                  SizedBox(height: 5,),
                  Text('Student',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 20))
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/parent.png'),
                    backgroundColor: Color(0xffFEC20E),
                    radius: 50,
                  ),
                  SizedBox(height: 5,),
                  Text('Parents',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 20),)
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/teacher.png'),
                    backgroundColor: Color(0xffFEC20E),
                    radius: 50,
                  ),
                  SizedBox(height: 5,),
                  Text('Teachers',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 20),)
                ],
              ),
            ),
          ],
        ),
    );
  }
}
