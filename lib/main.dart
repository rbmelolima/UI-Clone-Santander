import 'package:flutter/material.dart';
import 'package:ui_bank/screens/Account/index.dart';
//import 'package:ui_bank/screens/Login/index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Bank',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: const Color(0xffEDF2F4),
        primaryColor: const Color(0xffCC0001),
        primaryColorLight: const Color(0xffEF233C),
        accentColor: const Color(0xff2B2D42),
        textTheme: TextTheme(
          //Textfields pattern
          subtitle1: TextStyle(fontSize: 16),
          bodyText1: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          caption: TextStyle(
            color: Colors.grey[600],
            height: 1.6,
            fontSize: 14,
          ),
          headline1: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.normal,
            color: Colors.black,
          ),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Account(),
    );
  }
}
