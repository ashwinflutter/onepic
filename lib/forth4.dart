import 'package:flutter/material.dart';
import 'package:onepic/forth.dart';

class forth4 extends StatefulWidget {
  const forth4({Key? key}) : super(key: key);

  @override
  State<forth4> createState() => _forth4State();
}

class _forth4State extends State<forth4> {
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
    weldone ww =weldone.fromJson(map);
    ww.images[1].imageName;
    print("${ww.images[1].imageName}");
    ww.images[0].imageName;
    print("${ww.images[0].imageName}");
  }


  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class weldone {
  int id;
  String name;
  List<Myimage> images;

  weldone(this.id,this.name,this.images);

  factory weldone .fromJson(Map map) {
    List<Myimage> temp=[];

    List list =map['images'];
    for(int i=0;i<list.length;i++)
      {
        Myimage myimage=Myimage.fromjson(list[i]);
        temp.add(myimage);
      }
    return weldone(map['id'], map['name'], temp);
  }

}
class Myimage{
  int id;
  String imageName;

  Myimage(this.id,this.imageName);

  factory Myimage .fromjson(list) {
    return Myimage(list['id'], list['imageName']);
  }
}
