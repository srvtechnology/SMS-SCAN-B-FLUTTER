import 'package:flutter/material.dart';
import 'package:school_management/components/user_component.dart';
import 'package:dotted_line/dotted_line.dart';
class HomeLayout extends StatelessWidget{
  final Widget child;
  HomeLayout({required this.child});
  @override
  Widget build(BuildContext context){
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: width,
          margin: EdgeInsets.symmetric(vertical: height*0.06,horizontal: width*0.05),
          child: Column(
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
              UserComponent(title: "Madam Sonam", imageUrl: "", subtitle: "Class VIIC", description: "Learn for life"),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: DottedLine(
                  dashColor: Colors.black,
                ),
              ),
              child
            ],
          ),
        ),
      ),
    );
  }
}
