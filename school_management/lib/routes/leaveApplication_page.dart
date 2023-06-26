import 'package:flutter/material.dart';

import 'package:dotted_line/dotted_line.dart';
import 'package:school_management/components/user_component.dart';
import 'package:flutter_svg/svg.dart';

class LeaveApplicationPage extends StatefulWidget {
  static String routename = "/leave";
  @override
  State<LeaveApplicationPage> createState() => _LeaveApplicationPageState();
}

class _LeaveApplicationPageState extends State<LeaveApplicationPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body:Container(
        width: width,
        height: height,
        padding: EdgeInsets.symmetric(horizontal: width*0.04),
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: height*0.02),
                        child: DottedLine(
                          dashColor: Colors.black,
                        ),
                      ),
                      UserComponent(title: "Madam Sonam", imageUrl: "", subtitle: "Class VIIC", description: "Learn for life"),
                      Padding(
                        padding: EdgeInsets.only(top: height*0.02),
                        child: DottedLine(
                          dashColor: Colors.black,
                        ),
                      ),
                    ],
                  ),
                )
            ),
            Expanded(
              flex: 7,
              child: Container(
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: width*0.02),
                        child: Row(
                          children: [
                            Container(
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(
                                    color: Color(0xffFEC20E),
                                    shape: BoxShape.circle
                                ),
                                child: SvgPicture.asset("assets/home/attendance.svg",width: 15,height: 15,fit: BoxFit.scaleDown,)
                            ),
                            SizedBox(width: width*0.04,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Leave Application",style: TextStyle(color: Color(0xffFEC20E),fontWeight: FontWeight.bold,fontSize: 18),),
                                Text("Message will be sent to Principal",style: TextStyle(color: Color(0xff58595B82)),)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 7,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: width*0.04),
                        child: Column(
                          children: [
                            Expanded(
                                flex: 5,
                                child: Container(
                                  child: Column(
                                    children: [
                                      Expanded(
                                          flex: 3,
                                        child: Container(
                                          margin: EdgeInsets.symmetric(vertical: 10),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(15),
                                            color: Color.fromRGBO(217,217, 217, 0.5)
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Container(
                                          width: width,
                                          padding: EdgeInsets.symmetric(vertical: height*0.03),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      width: width*0.35,
                                                      height: height*0.05,
                                                      decoration: BoxDecoration(
                                                          color: Color(0xffFEC20E),
                                                          borderRadius: BorderRadius.all(Radius.circular(30))
                                                      ),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        children: [
                                                          Text("Upload",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 15),),
                                                          Padding(
                                                            padding: EdgeInsets.only(left: width*0.04),
                                                            child: SvgPicture.asset('assets/Polygon.svg',color: Colors.white,),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.symmetric(vertical: 5,horizontal: width*0.04),
                                                      child: Text("Attach documents",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.symmetric(vertical: height*0.02),
                                                width: width*0.35,
                                                height: height*0.05,
                                                decoration: BoxDecoration(
                                                    color: Color(0xffFEC20E),
                                                    borderRadius: BorderRadius.all(Radius.circular(30))
                                                ),
                                                child: Center(
                                                  child: Text("SEND",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 15),),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ) ,
    );
  }
}
