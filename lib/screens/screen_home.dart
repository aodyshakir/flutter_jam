import 'dart:convert';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/models/photo.dart';
import 'package:flutterapp/widget/menu.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> myList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text("Home Screen Title"),
      ),
      body: Center(
        child: myList.length > 0
            ? Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: ListView.builder(
                    itemCount: myList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return _buildMyList(myList[index]);
                    }),
              )
            : CircularProgressIndicator(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _addPhoto(),
      ),
    );
  }

  Widget _buildMyList(String img) {
    return Container(
      child: Card(
        child: Image.network(img),
      ),
    );
  }

  _addPhoto() async {
    final num = Random().nextInt(1000);
    final response =
        await http.get('http://jsonplaceholder.typicode.com/photos/$num');
    final parsedResponse = jsonDecode(response.body);

    final photo = Photo(
      id: parsedResponse['id'],
      title: parsedResponse['title'],
      albumId: parsedResponse['albumId'],
      url: parsedResponse['url'],
      thumbnailUrl: parsedResponse['thumbnailUrl'],
    );

    setState(() {
      myList.add(photo.url);
    });
  }
}
