import 'package:flutter/material.dart';

class forth extends StatefulWidget {
  const forth({Key? key}) : super(key: key);

  @override
  State<forth> createState() => _forthState();
}

class _forthState extends State<forth> {
  Map map={
    "id":1,
    "name":"ProductName",
    "images":[
      {
        "id":11,
        "imageName":"xCh-rhy"
      },
      {
        "id":31,
        "imageName":"fjs-eun"
      }]};
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    welcome ww= welcome.fromJson(map);
    ww.images[1].imageName;
    print("${ww.images[1].imageName}");

  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class welcome {
int id;
String name;
List<Myimage> images;

welcome(this.id, this.name, this.images);

// {
  // "id":1,
  // "name":"ProductName",
  // "images":[
  // {
  // "id":11,
  // "imageName":"xCh-rhy"
  // },
  // {
  // "id":31,
  // "imageName":"fjs-eun"
  // }]}

  factory welcome.fromJson(Map map) {
    List<Myimage> temp = [];

    List list = map['images'];
    for(int i = 0 ; i <  list.length ; i++)
      {
        Myimage myimage = Myimage.fromjson(list[i]);
        temp.add(myimage);
      }
    return welcome(map['id'], map['name'], temp);
  }
}

class Myimage {

  int id;
  String imageName;

  Myimage(this.id, this.imageName); // {
  // // "id":11,
  // // "imageName":"xCh-rhy"
  // // }

  factory Myimage.fromjson(list) {
    return Myimage(list['id'], list['imageName']);
  }
}

