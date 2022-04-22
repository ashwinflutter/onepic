import 'package:flutter/material.dart';

class third extends StatefulWidget {
  const third({Key? key}) : super(key: key);

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {

  Map map3={
    "shape_name":"rectangle",
    "property":{
      "width":5.0,
      "breadth":10.0
    }};
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    Shape ss=Shape.fromJson(map3);

  //  ss.property.

    print("SHAPE=${ss.shapename}=PROPERTY=${ss.property.width}");

  }


  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Shape {
  String shapename;
  Property property;

  Shape(this.shapename,this.property);
  factory Shape.fromJson(Map map3) {
    return Shape (map3['shape_name'],Property.fromJson(map3['property']));
  }

}

class Property {
  double width;
  double breadth;

  Property(this.width,this.breadth);

  factory Property.fromJson(map3) {
    return Property(map3['width'], map3['breadth']);
  }
}


