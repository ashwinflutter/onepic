import 'package:flutter/material.dart';
import 'package:onepic/databasedemo1.dart';

class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {

  Map map1={
    "id":"487349",
    "name":"Pooja Bhaumik",
    "score" : 1000



};
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    come cc=come.fromJson(map1);

    print("ID=${cc.id}=NAME=${cc.name}=Score=${cc.score}");

  }



  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class come {
 String id;
 String name;
 int score;

 come(this.id,this.name,this.score);

  factory come.fromJson(Map map1) {
    return come(map1['id'],map1['name'],map1['score']);
 }
}

