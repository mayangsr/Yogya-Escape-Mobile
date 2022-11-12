import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:yogya_escape_mobile/article_detail.dart';
import 'package:yogya_escape_mobile/article_model.dart';
import 'article_detail.dart';

// referensi: https://www.codewithflutter.com/flutter-fetch-data-from-api-rest-api-example/

Future<List<Post>> fetchPost() async {
  final response =
      await http.get(Uri.parse('http://10.0.2.2/tubesapi/read.php'));

  if (response.statusCode == 200) {
    final parsed = json.decode(response.body).cast<Map<String, dynamic>>();

    return parsed.map<Post>((json) => Post.fromMap(json)).toList();
  } else {
    throw Exception('Failed to load data');
  }
}

class Articles extends StatefulWidget {
  const Articles({Key? key}) : super(key: key);

  @override
  State<Articles> createState() => _ArticlesState();
}

class _ArticlesState extends State<Articles> {
  late Future<List<Post>> futurePost;

  @override
  void initState() {
    super.initState();
    futurePost = fetchPost();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'robotoSlab', scaffoldBackgroundColor: Color.fromRGBO(245, 245, 245, 1.0)),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(
        title: Text("Articles", style: TextStyle(color: Color.fromRGBO(0, 139, 92, 1), fontSize: 32, fontFamily: 'robotoSlab'),),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
      ),
        body: FutureBuilder<List<Post>>(
          future: futurePost,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ArticleDetail(),
                        settings: RouteSettings(arguments: snapshot.data![index])
                ),
              );
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${snapshot.data![index].nama}",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(0, 139, 92, 1)
                            ),
                          ),
                          SizedBox(height: 5),
                          Text("${snapshot.data![index].lokasi}"),
                          SizedBox(height: 10),
                          Text("Posted by ${snapshot.data![index].author}, on ${snapshot.data![index].tanggal}",
                          style: TextStyle(fontWeight: FontWeight.w800),)
                        ],
                      ),
                    ),
                  );
                },
                
              );
            } else {
              return Center(child: CircularProgressIndicator(color: Color.fromRGBO(0, 139, 92, 1),));
            }
          },
        ),
      ),
    );
  }
}

