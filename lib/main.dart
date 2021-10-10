import 'package:flutter/material.dart';
import 'package:msp_task/screens/HomePage.dart';
import 'package:msp_task/screens/allChats.dart';
import 'package:msp_task/screens/chatScreen.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UserBot',


      debugShowCheckedModeBanner: false,

      home:  HomePage(),
    );
  }
}




