import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:school_management/components/user_component.dart';
import 'package:flutter_svg/svg.dart';

class ResourcePage extends StatefulWidget {
  static String routename = "/resource";
  @override
  State<ResourcePage> createState() => _ResourcePageState();
}

class _ResourcePageState extends State<ResourcePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,

        padding: EdgeInsets.symmetric(horizontal: width*0.04),
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
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
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: width*0.04,),
                        child: Row(
                          children: [
                            Container(
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(
                                    color: Color(0xffFEC20E),
                                    shape: BoxShape.circle
                                ),
                                child: SvgPicture.asset("assets/home/resources.svg",width: 15,height: 15,fit: BoxFit.scaleDown,)
                            ),
                            SizedBox(width: width*0.04,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Resources",style: TextStyle(color: Color(0xffFEC20E),fontWeight: FontWeight.bold,fontSize: 18),),
                                Text("Provide additional material for students",style: TextStyle(color: Color(0xff58595B82),fontSize: width*0.035),)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 8,
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
                                        flex: 2,
                                          child:Container(
                                            width: width,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Container(
                                                  width:width*0.35,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xffFEC20E),
                                                    borderRadius: BorderRadius.all(Radius.circular(25))
                                                  ),
                                                  height: height*0.06,

                                                  child: Center(
                                                    child: Text("Subject",style: TextStyle(color: Colors.black,fontSize: 15,fontFamily: 'Poppins-Light',fontWeight: FontWeight.w600),),
                                                  ),
                                                ),
                                                SizedBox(width: width*0.04,),
                                                Container(
                                                  width:width*0.35,
                                                  height: height*0.06,
                                                  decoration: BoxDecoration(
                                                      color: Color(0xffFEC20E),
                                                      borderRadius: BorderRadius.all(Radius.circular(25))
                                                  ),
                                                  child: Center(
                                                    child: Text("Class",style: TextStyle(color: Colors.black,fontSize: 15,fontFamily: 'Poppins-Light',fontWeight: FontWeight.w600),),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                      ),
                                      Expanded(
                                          flex: 5,
                                          child: Container(

                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  child: ElevatedButton(
                                                      onPressed: (){},
                                                      style: ElevatedButton.styleFrom(
                                                        backgroundColor: Color(0xffFEC20E),
                                                        shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(20),
                                                        ),

                                                      ),
                                                      child: Container(
                                                          width:width*0.3,
                                                          height: height*0.06,
                                                          child: Center(child: Text("Upload",style: TextStyle(color: Colors.black,fontFamily: 'Poppins-Light',fontWeight: FontWeight.w600),))
                                                      )
                                                  ),
                                                ),
                                                SizedBox(height: height*0.04,),
                                                Container(
                                                  child: ElevatedButton(
                                                      style: ElevatedButton.styleFrom(
                                                        backgroundColor: Color(0xffFEC20E),
                                                        shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(20),
                                                        ),

                                                      ),
                                                      onPressed: (){},
                                                      child: Container(
                                                          width:width*0.3,
                                                          height: height*0.06,
                                                          child: Center(child: Text("Send",style: TextStyle(color: Colors.black,fontFamily: 'Poppins-Light',fontWeight: FontWeight.w600)))
                                                      )
                                                  ),
                                                )
                                              ],
                                            ),
                                          ))
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
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(horizontal: width*0.04),
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: Color(0xffFEC20E),width: 1)
          )
        ),
        width: width,
        height: height*0.1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset('assets/mainPage/home.svg'),
            SvgPicture.asset('assets/mainPage/message.svg'),
            SvgPicture.asset('assets/mainPage/notify.svg'),
            SvgPicture.asset('assets/mainPage/profile.svg'),
          ],
        ),
      ),
    );
  }
}
