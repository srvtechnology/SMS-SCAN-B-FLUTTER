import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  static String routename = "/profile";

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Profile Page"),
      ),
    );
  }
}
