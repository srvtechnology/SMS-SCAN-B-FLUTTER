import 'package:flutter/material.dart';
import 'package:school_management/components/user_component.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:school_management/components/widget_components.dart';
import 'package:flutter_svg/svg.dart';
import 'package:school_management/layout/home_layout.dart';
class HomeWorkPage extends StatefulWidget {
  static String routename = '/homework';

  @override
  State<HomeWorkPage> createState() => _HomeWorkPageState();
}

class _HomeWorkPageState extends State<HomeWorkPage> {

  int _tabIndicator = 0;
  Widget customTile(String date,String subject,String description,double width,double height){
    return Container(
      width:width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: width,
            padding: EdgeInsets.symmetric(vertical: height*0.03,horizontal: height*0.02),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(date,style:TextStyle(color:Color(0xffFEC20E),fontSize: 15,fontWeight: FontWeight.w500)),
                Text(subject,style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.w500),),
                Text(description,style:TextStyle(color: Color(0xffA7A9AC))),
              ],
            ),
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return HomeLayout(
        child: Column(
          children: [
            Container(
        width: width,
        child: Row(
          children: [
            Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                    color: Color(0xffFEC20E),
                    shape: BoxShape.circle
                ),
                child: SvgPicture.asset("assets/home/homework.svg",width: 15,height: 15,fit: BoxFit.scaleDown,)
            ),
            SizedBox(width: 10,),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        _tabIndicator=0;
                      });
                    },
                    child: Container(
                      width: 127,
                      height: height*0.05,
                      decoration:BoxDecoration(
                          borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                          color: _tabIndicator==0?Color(0xffFEC20E):Color(0xffD9D9D9)
                      ),
                      child: Center(child: Text("Homeworks",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),)),
                    ),
                  ),
                  SizedBox(width: 0.7,),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        _tabIndicator=1;
                      });
                    },
                    child: Container(
                      width: 127,
                      height: height*0.05,
                      decoration:BoxDecoration(
                          borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                          color: _tabIndicator==1?Color(0xffFEC20E):Color(0xffD9D9D9)
                      ),
                      child: Center(child: Text("Syllabus",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),)),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
            DottedLine(
              dashColor: Color(0xffFEC20E),
            ),
            _tabIndicator==0?Container(
              width:width,
              height: height/2,

              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  customTile("June 5", "History", "Read Chapters 23, starting from page 56 (Assignments due Monday,June 5)", width, height),
                  DottedLine(),
                  customTile("June 5", "History", "Read Chapters 23, starting from page 56 (Assignments due Monday,June 5)", width, height),
                  DottedLine(),
                  customTile("June 5", "History", "Read Chapters 23, starting from page 56 (Assignments due Monday,June 5)", width, height),
                  DottedLine(),
                  customTile("June 5", "History", "Read Chapters 23, starting from page 56 (Assignments due Monday,June 5)", width, height),
                  DottedLine(),
                  customTile("June 5", "History", "Read Chapters 23, starting from page 56 (Assignments due Monday,June 5)", width, height),
                  DottedLine(),
                  customTile("June 5", "History", "Read Chapters 23, starting from page 56 (Assignments due Monday,June 5)", width, height),
                  DottedLine(),
                  customTile("June 5", "History", "Read Chapters 23, starting from page 56 (Assignments due Monday,June 5)", width, height)
                ],
              ),
            ):Container(
              width:width,
              height: height/2,
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  customTile("June 5", "History", "Read Chapters 23, starting from page 56 (Assignments due Monday,June 5)", width, height),
                  DottedLine(),
                  customTile("June 5", "History", "Read Chapters 23, starting from page 56 (Assignments due Monday,June 5)", width, height)
                ],
              ),
            ),
            Container(
              width: width,
              margin: EdgeInsets.symmetric(vertical: height*0.02),
              child: Center(
                child: Container(
                  height: height*0.05,
                  width: width*0.3,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.vertical(top: Radius.circular(15))
                  ),
                  child: Center(
                    child: Text(
                      "Add",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        )
    );
  }
}
