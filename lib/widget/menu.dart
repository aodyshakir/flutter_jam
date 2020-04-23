import 'package:flutter/material.dart';
import 'package:flutterapp/screens/screen_home.dart';
import 'package:flutterapp/screens/second_screen.dart';
import 'package:flutterapp/screens/third_screen.dart';

class MyDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).primaryColor,
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text("oday@gmail.com"),
              accountName: Text("Uday_Al_Rikaby"),
              currentAccountPicture: Image.asset("assets/images/person.png"),
            ),
            Divider(
              color: Colors.white,
              thickness: 1,
            ),
            Card(
              child: ListTile(
                title: Text("Home Screen"),
                onTap: () {
                  Navigator.of(context).pushNamed('/');
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Second Screen"),
                onTap: () {
                  Navigator.of(context).pushNamed('/second');
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Third Screen"),
                onTap: () {
                  Navigator.of(context).pushNamed('/third');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }



}
