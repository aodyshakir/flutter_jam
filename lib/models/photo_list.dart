import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/models/photo.dart';
class PhotoList extends StatelessWidget {
  final photos;
  PhotoList({this.photos});
  @override
  Widget build(BuildContext context) {

    return new GridView.builder(
      itemCount: photos.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          width: 400,
          height: 400,
          child: Image.network(photos[index].url),
        );
      },
      gridDelegate:
      SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    );
  }
}


