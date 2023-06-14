import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class CustomWidget {
  static Widget customTile(String Image,String title,String subtitle){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            flex: 2,
            child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    color: Color(0xffFEC20E),
                    shape: BoxShape.circle
                ),
              child: SvgPicture.asset(Image,width: 15,height: 15,fit: BoxFit.scaleDown,),
            ),
          ),
          SizedBox(width: 5,),
          Expanded(
            flex: 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
                SizedBox(height: 2,),
                Text(subtitle,style: TextStyle(color: Color(0xff58595B82)),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
