import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomTile extends StatefulWidget {
  final String number;
  final String name;
  final String gender;

  CustomTile({required this.number,required this.name,required this.gender});

  @override
  State<CustomTile> createState() => _CustomTileState();
}

class _CustomTileState extends State<CustomTile> {
  int _indicator = 0;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child:Container(

                  child: Text(widget.number,style: TextStyle(fontWeight: FontWeight.w600)))
          ),
          Expanded(
              flex: 4,
              child: Container(

                child: Text(widget.name,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15)),
              )),
          Expanded(
              flex: 2,
              child: Container(

                alignment: Alignment.center,
                child: Text(widget.gender,style: TextStyle(fontWeight: FontWeight.w500)),
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
}
