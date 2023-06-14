import 'package:flutter/material.dart';
import 'package:school_management/layout/home_layout.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:school_management/components/widget_components.dart';
import 'package:school_management/components/user_component.dart';

class LandingScreen extends StatefulWidget {
  static String routename = "/teachers";

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  Widget _customTile(String imageUrl,double width,String className,String details,String name){
    return Container(
      width: width,
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                imageUrl
            ),
            backgroundColor: Colors.white,
            radius: 35,
          ),
          SizedBox(width: width*0.04,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Class ${className}",style: TextStyle(color: Colors.black,fontSize: width*0.08,fontWeight: FontWeight.w600 ),),
              Text(details,style:TextStyle(fontSize:15,color: Color(0xff58595B82),fontWeight: FontWeight.w500)),
              Text(name,style: TextStyle(fontSize:15,color: Color(0xff58595B82)),)
            ],
          )
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: width,
          margin: EdgeInsets.symmetric(vertical: height*0.07,horizontal: width*0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: DottedLine(
                  dashColor: Colors.black,
                ),
              ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: width*0.03),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: CircleAvatar(
                    // backgroundImage: NetworkImage(
                    //     imageUrl
                    // ),

                    backgroundColor: Colors.blueAccent,
                    radius: 40,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Welcome Madam Sonam!",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 18,color: Color(0xffFEC20E)),),
                    SizedBox(height: 1,),
                    Text("Teaches History and Geography",style:TextStyle(color: Color(0xff58595B82),fontSize: 15,fontWeight: FontWeight.w500)),
                    SizedBox(height: 5,),
                  ],
                )
              ],
            ),
          ),
              Padding(
                padding: EdgeInsets.only(left: width*0.04,top: height*0.03,bottom: height*0.01),
                child: Text("My Classes",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: width*0.05),),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: DottedLine(
                  dashColor: Colors.black,
                ),
              ),
              _customTile("https://s3-alpha-sig.figma.com/img/ddaa/96ba/e3d07ba0da468c908460d8d34cb2dfc2?Expires=1687132800&Signature=UvoBG14D00PpPg4gSzz5xVPqCI64V0dYcXIiTcZKfylU2YHZzh2UEvX5vHyePmKAm6SGLloRxncn3pJJXQQvIP9Rawq-TNUfjkHDy5z~41O1U-hEuC~UOLksrfZod-a-skhSEGyiExUD4HhaT52ZP4kLTAxDHCfRbn7NEvxULgrhyLT7~dD0uFBc2NA8PENKZQ1~TXqN1xYgJ4Q2OcSI6crI7MO2MPP4o1WIylyEr7d~xTrt1tFzlwSeWG8WI7wbThuKboCRaWC2QBuBVMbocmLx7znQu0uEj03qmuZCUnYjXQW35LL34HlzD73yjO~kXyfxjN~SyN9xdkQj4pl7-A__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4", width, "VIIC", "Class Captain", "Sonam Dema"),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: DottedLine(
                  dashColor: Colors.black,
                ),
              ),
              _customTile("https://s3-alpha-sig.figma.com/img/4864/952c/5512650d42fa07a676b161439672f925?Expires=1687132800&Signature=k-w2LRUJx1dTx-0hypr0lJsN~LZrJb8tdGaDyN6eS~g9Sgxtfu8yPlTNujIRstEKPObZSmMW0HVgrqOus4OUa3l-luVgU7q34COJq7LZ6vAYX-qb30m4n8MnQ7COOANFB-vC-GAgNfSdXsP9FGpslkYJBpG1Oq551m74RA8LYBbU83Vvi0QdUr5Q2Q0jOHltVewT2oBnKEa70IqHC6Yh9rWBBPlhn~suuw2Pg1m2cBlao1qUZ1mEWjwre2ToX0pixGgUcGHQHQuNPQ4miStKQE13QHV1cRHMRtyoWtmmmqEYHkGpP9JbvobYQdx7X64QS7LYbARzOaS55hqfr5r8ig__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4", width, "VA", "Class Captain", "Tshering Dorji"),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: DottedLine(
                  dashColor: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
