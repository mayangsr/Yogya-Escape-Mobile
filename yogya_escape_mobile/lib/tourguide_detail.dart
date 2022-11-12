import 'package:flutter/material.dart';
import 'package:yogya_escape_mobile/guide.dart';

class guideDetailScreen extends StatelessWidget {
  final Guide guide;

  guideDetailScreen(this.guide);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(guide.nama),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                guide.imgUrl,
                height: 300,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  guide.nama,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 22.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  guide.desc.toString(),
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 17.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
