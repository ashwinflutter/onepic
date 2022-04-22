import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'fifth.dart';
import 'forth.dart';
import 'forth4.dart';

void main() {
  runApp(MaterialApp(
    home: fifth(),
  ));
}

class demo extends StatefulWidget {
  const demo({Key? key}) : super(key: key);

  @override
  _demoState createState() => _demoState();
}

class _demoState extends State<demo> {
  List imagelist = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _initImages();
  }

  Future _initImages() async {
    // >> To get paths you need these 2 lines
    final manifestContent = await rootBundle.loadString('AssetManifest.json');

    final Map<String, dynamic> manifestMap = json.decode(manifestContent);
    // >> To get paths you need these 2 lines

    final imagePaths = manifestMap.keys
        .where((String key) => key.contains('images/'))
        .where((String key) => key.contains('.webp'))
        .toList();

    setState(() {
      imagelist = imagePaths;
      print(imagelist);
    });

    int rr = Random().nextInt(imagelist.length);
    String imagepath = imagelist[rr];
    // String imagepath = "images/apple.webp";
    print(imagepath);

    List<String> list = imagepath.split("/"); // [images, apple.webp]
    print(list);

    // String s1 = list[1];
    // List<String> list2 = s1.split("\."); // [apple, webp]
    // print(list2);
    // String s2 = list2[0];  // apple
    // print(s2);

    String spelling = imagepath.split("/")[1].split("\.")[0];
    List<String> answelist = spelling.split("");
    print(answelist); // [a, p, p, l, e]

    List toplist = List.filled(answelist.length, ""); // [, , , , ]

    String abcd = "abcdefghijklmnopqrstuvwxyz";
    List abcdlist = abcd.split(""); // [a,b....z]
    abcdlist.shuffle();

    List bottomlist = abcdlist.getRange(0, 10 - answelist.length).toList();
    bottomlist.addAll(answelist);
    bottomlist.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
