import 'package:flutter/material.dart';

class favGuide extends StatelessWidget {
  final String child;

  favGuide({required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: Color.fromRGBO(0, 139, 92, 0.6)),
          child: Text(
            child,
            style: TextStyle(fontSize: 10),
          )),
    );
  }
}
