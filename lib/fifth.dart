import 'package:flutter/material.dart';

class fifth extends StatefulWidget {
  const fifth({Key? key}) : super(key: key);

  @override
  State<fifth> createState() => _fifthState();
}

class _fifthState extends State<fifth> {
List<Map> list=[{
  "albumId": 1,
  "id": 1,
  "title": "accusamus beatae ad facilis cum similique qui sunt",
  "url": "http://placehold.it/600/92c952",
  "thumbnailUrl": "http://placehold.it/150/92c952"
},
  {
    "albumId": 1,
    "id": 2,
    "title": "reprehenderit est deserunt velit ipsam",
    "url": "http://placehold.it/600/771796",
    "thumbnailUrl": "http://placehold.it/150/771796"
  },
  {
    "albumId": 1,
    "id": 3,
    "title": "officia porro iure quia iusto qui ipsa ut modi",
    "url": "http://placehold.it/600/24f355",
    "thumbnailUrl": "http://placehold.it/150/24f355"
  }];
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    back bb=back.fromJson(list[2]);
    print("albumId= ${bb.albumId}");
    print("ID=${bb.id}");
    print("TITLE=${bb.title}");
    print("URL=${bb.url}");
    print("THUMNAILURL=${bb.thumbnailUrl}");

  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class back {
  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  back(this.albumId,this.id,this.title,this.url,this.thumbnailUrl);


  factory back.fromJson(Map list) {

     return back(list['albumId'],list['id'],list['title'],list['url'],list['thumbnailUrl']);
  }
}


