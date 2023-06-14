import 'package:flutter/material.dart';
class UserComponent extends StatelessWidget{
  final String title;
  final String imageUrl;
  final String subtitle;
  final String description;

  UserComponent({required this.title,required this.imageUrl,required this.subtitle,required this.description});

  @override
  Widget build(BuildContext context){
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width*0.03,vertical: height*0.01),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
              imageUrl
            ),

            backgroundColor: Colors.white,
            radius: 35,
          ),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
              SizedBox(height: 1,),
              Text(subtitle,style:TextStyle(color: Color(0xff58595B82),fontSize: 15)),
              SizedBox(height: 5,),
              Text(description,style: TextStyle(color: Color(0xff58595B82),fontSize: 10),)
            ],
          )
        ],
      ),
    );
  }
}