import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120.0),
        child: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 120,
        backgroundColor: Color(0xEEEEEE),
        title: Container(
                height: 100.0,
                width: 300.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage('img/Escape copy.png'),
                  ),
                  shape: BoxShape.rectangle,
                ),
                child: Row(
                  children: [
                    Text("Welcome to Yogya Escape", style: TextStyle(
                      color: Color.fromARGB(1, 22, 147, 105).withOpacity(1),
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'robotoSlab')),
                  ],
                ),
              ),
                elevation: 0.0,
                centerTitle: true,
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: CarouselSlider(
            options: CarouselOptions(height:  300),
            items: ['img/image-1.jpg','img/image-2.jpg','img/image-3.jpg','img/image-4.jpg','img/image-5.jpg'].map((i) {
              return Builder(
              builder : (BuildContext context) {
                return Container(
                width: MediaQuery.of(context).size.width,
                margin : EdgeInsets.symmetric(horizontal: 5.0),
                  child: Column(
                    children: [
                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Image.asset(i, width: 500, height: 200,)
                        ),
                      ),
                      SizedBox( height:  10,),
                      if(i == 'img/image-1.jpg') 
                        Text("Azizah", style:  TextStyle( fontSize: 25, fontWeight: FontWeight.w800),),
                      if(i == 'img/image-2.jpg')
                        Text("Berlin", style:  TextStyle( fontSize: 25, fontWeight: FontWeight.w800),),
                      if(i == 'img/image-3.jpg')
                        Text("Nida", style:  TextStyle( fontSize: 25, fontWeight: FontWeight.w800),),
                      if(i == 'img/image-4.jpg')
                        Text("Mayang", style:  TextStyle( fontSize: 25, fontWeight: FontWeight.w800),),
                      if(i == 'img/image-5.jpg')
                        Text("Hello", style:  TextStyle( fontSize: 25, fontWeight: FontWeight.w800),),
                    ],
                  ),

                );
          }
              );
          }).toList(),

          ),
        ),
      ),
    );
  }
}

