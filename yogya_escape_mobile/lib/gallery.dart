import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:yogya_escape_mobile/gallery_detail.dart';
import 'package:yogya_escape_mobile/gallery_model.dart';
import 'package:yogya_escape_mobile/gallery_detail.dart';

class gallery extends StatelessWidget {
  final placeList = Place.generatePlace();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
        title: Text
          ("Gallery", style: TextStyle (
            color: Color.fromRGBO(0, 139, 92, 1), 
            fontSize: 32, fontFamily: 'robotoSlab'),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        ),
          body: Container(
            padding: EdgeInsets.all(20),
            child: StaggeredGridView.countBuilder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              itemCount: placeList.length,
                crossAxisCount: 4, 
                itemBuilder: (context, index) => PlaceItem(placeList[index]), 
                staggeredTileBuilder: (_) => StaggeredTile.fit(2) 
            ),
          )
      ),
    );
  }
}