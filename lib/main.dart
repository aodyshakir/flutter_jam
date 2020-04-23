import 'package:flutter/material.dart';
import 'package:flutterapp/screens/screen_home.dart';
import 'package:flutterapp/screens/second_screen.dart';
import 'package:flutterapp/screens/third_screen.dart';
import 'package:flutterapp/util/theme.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myThemeData,
      debugShowCheckedModeBanner: false,
      initialRoute: '/second',
      routes: {
        '/': (context) => HomeScreen(),
        '/second': (context) => SecondScreen(),
        '/third': (context) => ThirdScreen(),
      },
    );
  }
}
