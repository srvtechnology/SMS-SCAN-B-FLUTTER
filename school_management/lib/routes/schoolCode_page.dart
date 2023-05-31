import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class SchoolCodePage extends StatefulWidget {
  static String routename = "/schoolcode";

  @override
  State<SchoolCodePage> createState() => _SchoolCodePageState();
}

class _SchoolCodePageState extends State<SchoolCodePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 3,
                child: Container(
                  width: width,
                  padding: EdgeInsets.only(left: width*0.08,top: height*0.08),
                  child: Image.asset('assets/nyoLogo.png'),
                ),
            ),
            Expanded(
              flex: 8,
              child: Container(
                width: width,
                padding: EdgeInsets.symmetric(horizontal: width*0.1,vertical: height*0.08),
                decoration: BoxDecoration(
                  color: Color(0xffFEC20E),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(15))
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xffFEFBFB),
                          hintText: "School Code",
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
                      margin: EdgeInsets.symmetric(vertical: 10),
                      width: width,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(shape: StadiumBorder(),backgroundColor: Color(0xff5B5959)),
                          child:Text("Login",style: TextStyle(fontSize: 18,color: Color(0xffFFFFFF)),)
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: width/1.4,
                      margin: EdgeInsets.symmetric(vertical: 15),
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
