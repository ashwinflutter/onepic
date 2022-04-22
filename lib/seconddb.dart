import 'package:flutter/material.dart';

class second extends StatefulWidget {
  const second({Key? key}) : super(key: key);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
Map map2={
  "city": "Mumbai",
  "streets": [
    "creative",
    "address2"
  ]};

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    go gg=go.fromJson(map2);
    print("CITY=${gg.city}=STREETS=${gg.streets}");

  }


  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class go {

  String city;
 List<String> streets;

  go(this.city,this.streets);


  factory go.fromJson(Map map2) {

    return go(map2['city'],map2['streets']);
  }


}
