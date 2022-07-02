import 'package:flutter/material.dart';

class listGuide extends StatelessWidget {
  final String child;

  listGuide({required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        color: Color.fromRGBO(0, 139, 92, 0.6),
        child: Center(
            child: Text(
          child,
          style: TextStyle(fontSize: 40),
        )),
      ),
    );
  }
}
