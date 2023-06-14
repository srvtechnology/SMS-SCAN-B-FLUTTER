import 'package:flutter/material.dart';
import 'package:school_management/layout/home_layout.dart';
import 'package:flutter_svg/svg.dart';
import 'package:dotted_line/dotted_line.dart';

class IndividualGradeScreen extends StatefulWidget {
  static String routename = "/individualgrade";

  @override
  State<IndividualGradeScreen> createState() => _IndividualGradeScreenState();
}

class _IndividualGradeScreenState extends State<IndividualGradeScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return HomeLayout(
        child:Column(
          children: [
            Padding(
                padding:EdgeInsets.symmetric(vertical: 10,horizontal: 10) ,
              child: Row(
                children: [
                  Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          color: Color(0xffFEC20E),
                          shape: BoxShape.circle
                      ),
                      child: SvgPicture.asset("assets/home/timetable.svg",width: 15,height: 15,fit: BoxFit.scaleDown,)
                  ),
                  SizedBox(width: width*0.06,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Time table",style: TextStyle(color: Color(0xffFEC20E),fontWeight: FontWeight.bold,fontSize: 18),),
                      Text('Classes',style:TextStyle(color: Color(0xff58595B82)))
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: width,
              height: height/1.5,
              child: Row(
                children: [
                  Expanded(
                      flex: 3,
                      child:Container(
                        height: height/1.5,
                        color: Colors.red,
                        child: Text("noo"),
                      )
                  ),
                  Expanded(
                      flex: 7,
                      child: Container(
                        color: Colors.amber,
                        child: Text("noo"),
                      )
                  ),
                ],
              ),
            )
          ],
        )
    );
  }
}
