import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:school_management/routes/chat_page.dart';
import 'package:school_management/routes/home_page.dart';
import 'package:school_management/routes/notification_page.dart';
import 'package:school_management/routes/profile_page.dart';
class MainPage extends StatefulWidget {
  static String routename = "/main";

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {


  int _selectedIndex = 0;
  List pages=[
    HomePage(),
    ChatPage(),
    NotificationPage(),
    ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
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
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),

        ),
      ),
    );
  }
}
