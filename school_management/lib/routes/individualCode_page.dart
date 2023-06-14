import 'package:flutter/material.dart';
import 'package:school_management/layout/login_layout.dart';
import '';
class IndividualCodePage extends StatefulWidget {
  static String routename = "/code";

  @override
  State<IndividualCodePage> createState() => _IndividualCodePageState();
}

class _IndividualCodePageState extends State<IndividualCodePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return LoginLayout(
      padding: EdgeInsets.symmetric(horizontal: width*0.1,vertical: height*0.07),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 18),
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
            Column(
              children: [
              Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xffFEFBFB),
                hintText: "Code",
                hintStyle: TextStyle(color: Color(0xffCAC3C3),fontSize: 18,letterSpacing: 1),
                contentPadding: EdgeInsets.symmetric(horizontal: width*0.025,vertical: height*0.02),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color:  Color(0xffFEFBFB),width:0.5),
                    borderRadius: BorderRadius.all(Radius.circular(30))
                ),
                focusedBorder:  OutlineInputBorder(
                    borderSide: BorderSide(color:  Color(0xffFEFBFB),width: 0.5),
                    borderRadius: BorderRadius.all(Radius.circular(30))
                ),),
            ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                width: width,
                height: height*0.065,
                child: ElevatedButton(
                    onPressed: (){

                    },
                    style: ElevatedButton.styleFrom(shape: StadiumBorder(),backgroundColor: Color(0xff5B5959)),
                    child:Text("Login",style: TextStyle(fontSize: 18,color: Color(0xffFFFFFF)),)
                ),
              ),
            ],
            ),
            Container(
                width: width/1.4,
                margin: EdgeInsets.symmetric(vertical: height*0.04),
                padding: EdgeInsets.only(right: width*0.05),
                child: Text.rich(
                    TextSpan(
                        text: "Note:",
                        style: TextStyle(color: Color(0xffFFFFFF),fontSize: 15,fontWeight: FontWeight.w600),
                        children: <TextSpan>[
                          TextSpan(text: ' This is only a one time login, you will not be asked this school code again. ', style: TextStyle(fontWeight: FontWeight.w300,wordSpacing: 1)),
                        ]
                    )
                )
            )
          ],
        ),
    );
  }
}
