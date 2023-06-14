import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:school_management/layout/home_layout.dart';
import 'package:flutter_svg/svg.dart';

class GradesScreen extends StatefulWidget {
  static String routename = "/gardes";

  @override
  State<GradesScreen> createState() => _GradesScreenState();
}

class _GradesScreenState extends State<GradesScreen> {

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
              child: Center(
                child: Container(
                  width: 60,
                  alignment: Alignment.center,
                  child: Text("Edit",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white),),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color(0xffFEC20E)
                  ),
                ),
              )
          )

        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return HomeLayout(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          color: Color(0xffFEC20E),
                          shape: BoxShape.circle
                      ),
                      child: SvgPicture.asset("assets/home/grades.svg",width: 15,height: 15,fit: BoxFit.scaleDown,)
                  ),
                  SizedBox(width: 10,),
                  Text("Grades",style: TextStyle(color: Color(0xffFEC20E),fontWeight: FontWeight.bold,fontSize: 18),),
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
                    padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Container(
                                child: Text("No",style: TextStyle(fontWeight: FontWeight.bold),))),
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
                            child: Container())
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: DottedLine(),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 6),
                    child: SingleChildScrollView(
                      child: Container(
                        width: width,
                        child: Column(
                          children: [
                            customTile(width, "1.", "Bidda Dorji", "F"),
                            DottedLine(
                              dashColor: Colors.grey,
                            ),
                            customTile(width, "1.", "Bidda Dorji", "F"),
                            DottedLine(
                              dashColor: Colors.grey,
                            ),
                            customTile(width, "1.", "Bidda Dorji", "F"),
                            DottedLine(
                              dashColor: Colors.grey,
                            ),
                            customTile(width, "1.", "Bidda Dorji", "F"),
                            DottedLine(
                              dashColor: Colors.grey,
                            ),
                            customTile(width, "1.", "Bidda Dorji", "F"),
                            DottedLine(
                              dashColor: Colors.grey,
                            ),
                            customTile(width, "1.", "Bidda Dorji", "F"),
                            DottedLine(
                              dashColor: Colors.grey,
                            ),
                            customTile(width, "1.", "Bidda Dorji", "F"),
                            DottedLine(
                              dashColor: Colors.grey,
                            ),
                            customTile(width, "1.", "Bidda Dorji", "F"),
                            DottedLine(
                              dashColor: Colors.grey,
                            ),
                            customTile(width, "1.", "Bidda Dorji", "F"),
                            DottedLine(
                              dashColor: Colors.grey,
                            ),
                            customTile(width, "1.", "Bidda Dorji", "F"),
                            DottedLine(
                              dashColor: Colors.grey,
                            ),
                            customTile(width, "1.", "Bidda Dorji", "F"),
                            DottedLine(
                              dashColor: Colors.grey,
                            ),
                            customTile(width, "1.", "Bidda Dorji", "F"),
                            DottedLine(
                              dashColor: Colors.grey,
                            ),
                            customTile(width, "1.", "Bidda Dorji", "F"),
                            DottedLine(
                              dashColor: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )

                ],
              ),
            )
          ],
        )
    );
  }
}
