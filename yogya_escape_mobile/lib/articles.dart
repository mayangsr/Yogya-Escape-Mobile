import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:yogya_escape_mobile/main.dart';

class Articles extends StatefulWidget {
  const Articles({Key? key}) : super(key: key);

  @override
  State<Articles> createState() => _ArticlesState();
}

class _ArticlesState extends State<Articles> {
 List<String> images = [
   "assets/images/scenary.jpg",
   "assets/images/scenary_red.jpg",
   "assets/images/waterfall.jpg",
   "assets/images/tree.jpg",
 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Articles", style: TextStyle(color: Color.fromRGBO(0, 139, 92, 1), fontSize: 25, fontFamily: 'robotoSlab'),),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext, index){
          return Card(
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage(images[index]),),
              title: Text("This is title"),
              subtitle: Text("This is subtitle"),
            ),
          );
        },
        itemCount: images.length,
        shrinkWrap: true,
        padding: EdgeInsets.all(10.0),
        scrollDirection: Axis.vertical,
      )
    );
  }
}