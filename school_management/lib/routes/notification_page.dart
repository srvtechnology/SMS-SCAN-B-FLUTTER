import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  static String routename = "/notification";

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Notification Page"),
      ),
    );
  }
}
