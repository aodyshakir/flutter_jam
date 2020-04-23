import 'package:flutter/material.dart';
import 'package:flutterapp/widget/menu.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text("Third Screen Title"),
      ),
      body: Center(
        child: Text(
          "Third screen",
        ),
      ),
    );
  }
}
