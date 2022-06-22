import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gallery',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Generate a list of dummy items
  final List<Map<String, dynamic>> _items = List.generate(
      9,
      (index) => {
            "id": index,
            "title": "Item $index",
            "height": 130.0,
          });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Gallery", style: TextStyle(color: Color.fromRGBO(0, 139, 92, 1), fontSize: 32, fontFamily: 'robotoSlab'),),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        ),
        // implement the massonry layout
        body: MasonryGridView.count(
          itemCount: _items.length,
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          // the number of columns
          crossAxisCount: 3, 
          // vertical gap between two items
          mainAxisSpacing: 20, 
          // horizontal gap between two items
          crossAxisSpacing: 20, 
          itemBuilder: (context, index) {
            // display each item with a card
            return Card(
              // Give each item a random background color
              color: Color.fromARGB(
                  Random().nextInt(256),
                  Random().nextInt(256),
                  Random().nextInt(256),
                  Random().nextInt(256)),
              key: ValueKey(_items[index]['id']),
              child: SizedBox(
                height: _items[index]['height'],
                child: Center(
                  child: Text(_items[index]['title']),
                ),
              ),
            );
          },
        ));
  }
}