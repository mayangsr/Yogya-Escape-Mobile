import 'package:flutter/material.dart';
import 'package:yogya_escape_mobile/gallery_model.dart';

class PlaceItem extends StatelessWidget {
  final Place place;
  PlaceItem(this.place);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      height: place.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: AssetImage(
            place.imageUrl
          ),
          fit: BoxFit.cover
          )
      ),
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            place.title,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
        ),
      ),
    );
  }
}