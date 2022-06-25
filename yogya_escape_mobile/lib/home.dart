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
                // children: [
                //   Text("Welcome to Yogya Escape", style: TextStyle(
                //     color: Color.fromARGB(1, 22, 147, 105).withOpacity(1),
                //     fontSize: 20,
                //     fontWeight: FontWeight.w400,
                //     fontFamily: 'robotoSlab')),
                // ],
              ),
            ),
              elevation: 0.0,
              centerTitle: true,
      ),
    ),
    body: Center(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column( children: [
            CarouselSlider(
            options: CarouselOptions(height:  370),
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
                      SizedBox( height: 10,),
                      if(i == 'img/image-1.jpg')
                        Container(
                          child: Column(children: [
                            Text("Pantai Baron", style:  TextStyle( fontSize: 25, fontWeight: FontWeight.w500, color: Color.fromRGBO(0, 139, 92, 1)),),
                            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the  industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                        style:  TextStyle( fontSize: 12, fontWeight: FontWeight.w500, color: Color.fromRGBO(35, 35, 35, 1)),),
                          ],),
                        ),
                      if(i == 'img/image-2.jpg')
                      Container(
                          child: Column(children: [
                            Text("Tugu", style:  TextStyle( fontSize: 25, fontWeight: FontWeight.w500, color: Color.fromRGBO(0, 139, 92, 1)),),
                            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the  industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                        style:  TextStyle( fontSize: 12, fontWeight: FontWeight.w500, color: Color.fromRGBO(35, 35, 35, 1)),),
                          ],),
                        ),
                      if(i == 'img/image-3.jpg')
                        Container(
                          child: Column(children: [
                            Text("Pantai Jogja", style:  TextStyle( fontSize: 25, fontWeight: FontWeight.w500, color: Color.fromRGBO(0, 139, 92, 1)),),
                            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the  industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                        style:  TextStyle( fontSize: 12, fontWeight: FontWeight.w500, color: Color.fromRGBO(35, 35, 35, 1)),),
                          ],),
                        ),
                      if(i == 'img/image-4.jpg')
                        Container(
                          child: Column(children: [
                            Text("Candi Borobudur", style:  TextStyle( fontSize: 25, fontWeight: FontWeight.w500, color: Color.fromRGBO(0, 139, 92, 1)),),
                            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the  industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                        style:  TextStyle( fontSize: 12, fontWeight: FontWeight.w500, color: Color.fromRGBO(35, 35, 35, 1)),),
                          ],),
                        ),
                        
                      if(i == 'img/image-5.jpg')
                        Container(
                          child: Column(children: [
                            Text("Malioboro", style:  TextStyle( fontSize: 25, fontWeight: FontWeight.w500, color: Color.fromRGBO(0, 139, 92, 1)),),
                            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the  industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                        style:  TextStyle( fontSize: 12, fontWeight: FontWeight.w500, color: Color.fromRGBO(35, 35, 35, 1)),),
                          ],),
                        ),
                    ],
                    
                  ),

                );
          }
              );
          }).toList(),

          ),
          Container(
            margin : EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(children: [
                      Container(
                        height: 130,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromRGBO(0, 128, 85, 0.6),
                        ),
                        alignment: Alignment.center,
                        child: const Text('Bundle 1 \n murah \n makan siang'),
                      ), Spacer(),
                      Container(
                        height: 130,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromRGBO(0, 128, 85, 0.6),
                        ),
                        alignment: Alignment.center,
                        child: const Text('Bundle 2 \n murah \n makan siang'),
                      ), Spacer(),
                      Container(
                        height: 130,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromRGBO(0, 128, 85, 0.6),
                        ),
                        alignment: Alignment.center,
                        child: const Text('Bundle 3 \n murah \n makan siang'),
                      )
                    ],),
                  )
        ],
        )
      ),
    ),
  );
  }
  }

