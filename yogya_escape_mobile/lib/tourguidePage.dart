import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:yogya_escape_mobile/listGuide.dart';
import 'package:yogya_escape_mobile/listFavGuide.dart';
=======
import 'package:turgaid/listGuide.dart';
import 'package:turgaid/listFavGuide.dart';
>>>>>>> c500ae5f1ef554e0f088c0fdade89f23c52190b8

class tourguidePage extends StatelessWidget {
  final List _posts = [
    'Tour Guide 1',
    'Tour Guide 2',
    'Tour Guide 3',
    'Tour Guide 4',
  ];

  final List _stories = [
    'Fav Touguide 1',
    'Fav Touguide 2',
    'Fav Touguide 3',
    'Fav Touguide 4',
    'Fav Touguide 5',
    'Fav Touguide 6',
    'Fav Touguide 7',
    'Fav Touguide 8',
    'Fav Touguide 9',
    'Fav Touguide 10',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Favourite Guide
          Container(
            height: 150,
            child: ListView.builder(
                itemCount: _stories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return favGuide(
                    child: _stories[index],
                  );
                }),
          ),

          // Postingan
          Expanded(
            child: ListView.builder(
                itemCount: _posts.length,
                itemBuilder: (context, index) {
                  return listGuide(
                    child: _posts[index],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
