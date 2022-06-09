import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:yogya_escape_mobile/article_model.dart';
import 'package:yogya_escape_mobile/articles.dart';
import 'package:yogya_escape_mobile/main.dart';

class ArticleDetail extends StatelessWidget {
  const ArticleDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final artikel = ModalRoute.of(context)!.settings.arguments as Post;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          artikel.nama, 
          style: TextStyle(
            color: Color.fromRGBO(0, 139, 92, 1), 
            fontSize: 20, 
            fontFamily: 'robotoSlab',
            fontWeight: FontWeight.w800)),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        iconTheme: IconThemeData(color:  Color.fromRGBO(0, 139, 92, 1)),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Image.network(artikel.image),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text("Lokasi: "+artikel.lokasi,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                    // color: Constants.primaryTextColor,
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(artikel.deskripsi,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15.0,
                  // color: Constants.captionTextColor,
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return FirstScreen();
                      },
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  // height: ScreenUtil().setHeight(50.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(169, 176, 185, 0.42),
                        spreadRadius: 0,
                        blurRadius: 8,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}