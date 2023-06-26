import 'package:flutter/material.dart';
import 'package:school_management/components/user_component.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

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
      bottomNavigationBar:  Container(
        margin: EdgeInsets.symmetric(horizontal: 12),
        padding: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
            border: Border(
                top: BorderSide(
                    color: Color(0xffFEC20E),
                    width: 1
                )
            )
        ),
        child: SafeArea(
          child: GNav(
            activeColor: Color(0xffFEC20E),
            tabBackgroundColor: Color(0xff58595B),
            padding: EdgeInsets.all(10),
            gap: 6,
            tabs: [
              GButton(
                icon:Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.message,
                text: 'Likes',
              ),
              GButton(
                icon: Icons.search,
                text: 'Search',
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
              ),
            ],
          ),

        ),
      ),
    );
  }
}
