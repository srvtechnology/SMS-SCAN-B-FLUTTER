import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:school_management/components/user_component.dart';
import 'package:school_management/components/widget_components.dart';
class HomePage extends StatefulWidget {
  static String routename = "/home";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: width,
          margin: EdgeInsets.symmetric(vertical: height*0.07,horizontal: width*0.04),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Icon(Icons.arrow_back,color: Colors.black,),
                    SizedBox(width: 10,),
                    Text("Click to login as a different student",style: TextStyle(fontWeight: FontWeight.w500),)
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: DottedLine(
                  dashColor: Colors.black,
                ),
              ),
              UserComponent(title: "Sonam Dema", imageUrl: "https://s3-alpha-sig.figma.com/img/ddaa/96ba/e3d07ba0da468c908460d8d34cb2dfc2?Expires=1687132800&Signature=UvoBG14D00PpPg4gSzz5xVPqCI64V0dYcXIiTcZKfylU2YHZzh2UEvX5vHyePmKAm6SGLloRxncn3pJJXQQvIP9Rawq-TNUfjkHDy5z~41O1U-hEuC~UOLksrfZod-a-skhSEGyiExUD4HhaT52ZP4kLTAxDHCfRbn7NEvxULgrhyLT7~dD0uFBc2NA8PENKZQ1~TXqN1xYgJ4Q2OcSI6crI7MO2MPP4o1WIylyEr7d~xTrt1tFzlwSeWG8WI7wbThuKboCRaWC2QBuBVMbocmLx7znQu0uEj03qmuZCUnYjXQW35LL34HlzD73yjO~kXyfxjN~SyN9xdkQj4pl7-A__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4", subtitle: "Class VIIB", description: "My fav subject in Maths"),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: DottedLine(
                  dashColor: Colors.black,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding:EdgeInsets.symmetric(vertical: height*0.02),
                      child: Text("Activities",style:TextStyle(color: Color(0xffFEC20E),fontWeight: FontWeight.bold,fontSize: 18)),
                    ),
                    CustomWidget.customTile('assets/home/attendance.svg', "Attendance", "Tap here to take students attendance"),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: DottedLine(
                        dashColor: Colors.black,
                      ),
                    ),
                    CustomWidget.customTile('assets/home/homework.svg', "Homework","Tap here to add homework or syllabus"),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: DottedLine(
                        dashColor: Colors.black,
                      ),
                    ),
                    CustomWidget.customTile('assets/home/application.svg', "Leave Applications", "Tap here to apply for leave"),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: DottedLine(
                        dashColor: Colors.black,
                      ),
                    ),
                    CustomWidget.customTile('assets/home/grades.svg',"Grades","Tap here to see all subject grades"),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: DottedLine(
                        dashColor: Colors.black,
                      ),
                    ),
                    CustomWidget.customTile('assets/home/timetable.svg', "Timetable","Tap here to see all subject grades"),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: DottedLine(
                        dashColor: Colors.black,
                      ),
                    ),
                    CustomWidget.customTile('assets/home/resources.svg',"Resources" ,"Tap here for extra resources for learning" )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
