import 'package:flutter/material.dart';
import 'package:school_management/components/customTile_component.dart';
import 'package:school_management/layout/home_layout.dart';
import 'package:flutter_svg/svg.dart';
import 'package:dotted_line/dotted_line.dart';
class AttendanceScreen extends StatefulWidget {
  static String routename = "/attendance";

  @override
  State<AttendanceScreen> createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  int _indicator = 0;
  Widget customTile(double width,String no,String name,String gender,){
    return Container(
      width: width,
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child:Container(

                  child: Text(no,style: TextStyle(fontWeight: FontWeight.w600)))
          ),
          Expanded(
              flex: 4,
              child: Container(

                child: Text(name,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15)),
              )),
          Expanded(
              flex: 2,
              child: Container(

                alignment: Alignment.center,
                child: Text(gender,style: TextStyle(fontWeight: FontWeight.w500)),
              )),
          Expanded(
              flex: 3,
              child: Container(
                alignment: Alignment.center,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          _indicator = 0;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 17,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: _indicator==0?Color(0xffFEC20E):Color(0xffD9D9D9)
                        ),
                        child: Center(child: SvgPicture.asset('assets/home/attendance.svg',width: 9,height: 9,fit: BoxFit.scaleDown,color: _indicator==0?Colors.white:Colors.black,)),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          _indicator=1;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 17,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: _indicator==1?Color(0xffFEC20E):Color(0xffD9D9D9)
                        ),
                        child: Center(child: SvgPicture.asset('assets/home/wrong.svg',width: 9,height: 9,color: _indicator==1?Colors.white:Colors.black,)),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          _indicator=2;
                        });
                      },
                      child: Container(
                        width: 20,
                        height: 17,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: _indicator==2?Color(0xffFEC20E):Color(0xffD9D9D9)
                        ),
                        child: Center(child: Text("L",style: TextStyle(fontWeight: FontWeight.bold,color: _indicator==2?Colors.white:Colors.black),)),
                      ),
                    )
                  ],
                )
              )
          )

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
          Padding(
            padding: EdgeInsets.symmetric(vertical: height*0.025,horizontal: width*0.02),
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
                SizedBox(width: 10,),
                Text("Attendance",style: TextStyle(color: Color(0xffFEC20E),fontWeight: FontWeight.bold,fontSize: 18),),
              ],
            ),
          ),
          Container(
            width: width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("June 5 (Monday)",style: TextStyle(color: Color(0xffFEC20E),fontSize: 18,fontWeight: FontWeight.bold)),
                Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Icon(Icons.arrow_back_ios,color: Color(0xffFEC20E),size: 15,),
                ),
                Icon(Icons.arrow_forward_ios,color: Color(0xffFEC20E),size: 15,)
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: DottedLine(),
          ),
          Container(
            width: width,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Container(

                              child: Text("No.",style: TextStyle(fontWeight: FontWeight.bold),))),
                      Expanded(
                          flex: 4,
                          child: Container(

                              child: Text("Name",style: TextStyle(fontWeight: FontWeight.bold),))),
                      Expanded(
                          flex: 2,
                          child: Container(

                              alignment: Alignment.center,
                              child: Text("Gender",style: TextStyle(fontWeight: FontWeight.bold),))
                      ),
                      Expanded(
                          flex: 3,
                          child: Container(

                            alignment: Alignment.center,
                            child: Text("Today",style: TextStyle(fontWeight: FontWeight.bold),),
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: DottedLine(),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 6),
                  child: Container(
                    width: width,
                    child: Column(
                      children: [
                        CustomTile(number: "1.", name:"Bidda Dorji", gender: "F"),
                        DottedLine(
                          dashColor: Colors.grey,
                        ),
                        CustomTile(number: "1.", name:"Bidda Dorji", gender: "F"),
                        DottedLine(
                          dashColor: Colors.grey,
                        ),
                        CustomTile(number: "1.", name:"Bidda Dorji", gender: "F"),
                        DottedLine(
                          dashColor: Colors.grey,
                        ),
                        CustomTile(number: "1.", name:"Bidda Dorji", gender: "F"),
                        DottedLine(
                          dashColor: Colors.grey,
                        ),
                        CustomTile(number: "1.", name:"Bidda Dorji", gender: "F"),
                        DottedLine(
                          dashColor: Colors.grey,
                        ),
                        CustomTile(number: "1.", name:"Bidda Dorji", gender: "F"),
                        DottedLine(
                          dashColor: Colors.grey,
                        ),
                        CustomTile(number: "1.", name:"Bidda Dorji", gender: "F"),
                        DottedLine(
                          dashColor: Colors.grey,
                        ),
                        CustomTile(number: "1.", name:"Bidda Dorji", gender: "F"),
                        DottedLine(
                          dashColor: Colors.grey,
                        ),
                        CustomTile(number: "1.", name:"Bidda Dorji", gender: "F"),
                        DottedLine(
                          dashColor: Colors.grey,
                        ),
                        CustomTile(number: "1.", name:"Bidda Dorji", gender: "F"),
                        DottedLine(
                          dashColor: Colors.grey,
                        ),
                        CustomTile(number: "1.", name:"Bidda Dorji", gender: "F"),
                        DottedLine(
                          dashColor: Colors.grey,
                        ),
                        CustomTile(number: "1.", name:"Bidda Dorji", gender: "F"),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
