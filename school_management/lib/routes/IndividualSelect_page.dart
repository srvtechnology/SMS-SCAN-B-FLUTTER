import 'package:flutter/material.dart';
import 'package:school_management/layout/login_layout.dart';
import 'package:flutter_svg/svg.dart';
class IndividualSelectPage extends StatefulWidget {
  static String routename = "/select";

  @override
  State<IndividualSelectPage> createState() => _IndividualSelectPageState();
}

class _IndividualSelectPageState extends State<IndividualSelectPage> {

  Widget _customAvator(String imageUrl,String title,double width){
    return Container(
      child: Column(
        children: [
          Expanded(
            flex:7,
            child: CircleAvatar(
              backgroundImage: AssetImage(imageUrl),
              backgroundColor: Color(0xffFEC20E),
              radius: width*0.13,
            ),
          ),
          Expanded(
              flex: 2,
              child: Text(title,style: TextStyle(color: Color(0xffFFFFFF),fontSize: 20))
          )
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return LoginLayout(
      padding: EdgeInsets.symmetric(horizontal: width*0.1,vertical: height*0.06),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              flex: 2,
              child: _customAvator("assets/student.png", "Student",width)
            ),
            Expanded(
              flex: 2,
              child: _customAvator('assets/parent.png', 'Parents',width)
            ),
            Expanded(
              flex: 2,
              child: _customAvator('assets/teacher.png', 'Teachers',width)
            ),
          ],
        ),
    );
  }
}
