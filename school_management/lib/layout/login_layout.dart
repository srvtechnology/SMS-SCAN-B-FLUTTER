import 'package:flutter/material.dart';

class LoginLayout extends StatelessWidget{
  final Widget child;
  final EdgeInsetsGeometry padding;
  const LoginLayout({required this.child,required this.padding});

  @override
  Widget build(BuildContext context){
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
                padding: padding,
                decoration: BoxDecoration(
                    color: Color(0xffFEC20E),
                    borderRadius: BorderRadius.vertical(top: Radius.circular(15))
                ),
                child: child,
            ))
          ],
        ),
      ),
    );
  }
}