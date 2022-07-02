import 'package:flutter/material.dart';
import 'package:yogya_escape_mobile/guide.dart';
import 'package:yogya_escape_mobile/tourguide_detail.dart';

class guideListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tour Guide'),
      ),
      body: ListView.builder(
          itemCount: guideList.length,
          itemBuilder: (context, index) {
            Guide guide = guideList[index];
            return Card(
              child: ListTile(
                title: Text(guide.nama),
                // subtitle: Text(guide.desc),
                leading: Image.network(guide.imgUrl),
                trailing: Icon(Icons.arrow_forward_rounded),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => guideDetailScreen(guide)));
                },
              ),
            );
          }),
    );
  }
}
