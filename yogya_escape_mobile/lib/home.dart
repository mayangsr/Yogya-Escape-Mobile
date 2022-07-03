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
                      SizedBox( height: 20,),
                      if(i == 'img/image-1.jpg')
                        Container(
                          child: Column(children: [
                            Text("Pantai Ngetun", style:  TextStyle( fontSize: 25, fontWeight: FontWeight.w500, color: Color.fromRGBO(0, 139, 92, 1)),),
                            Text("Pantai Ngetun adalah salah satu pantai berpasir putih yang tersembunyi di Kabupaten Gunungkidul. Pantai ini diapit oleh dua bukit atau tebing karang di kedua sisinya. Di sekitar pantai terdapat pepohonan rindang untuk berteduh sambil menikmati pemandangan",
                        style:  TextStyle( fontSize: 12, fontWeight: FontWeight.w500, color: Color.fromRGBO(35, 35, 35, 1)),),
                          ],),
                        ),
                      if(i == 'img/image-2.jpg')
                      Container(
                          child: Column(children: [
                            Text("Pantai Selatan", style:  TextStyle( fontSize: 25, fontWeight: FontWeight.w500, color: Color.fromRGBO(0, 139, 92, 1)),),
                            Text("Pantai di pesisir selatan Jawa selalu dikaitkan dengan mitos Ratu Pantai Selatan, Nyi Roro Kidul. Benar atau tidaknya mitos itu tidak ada yang tahu pasti. Namun, yang bisa dipastikan benar adalah keindahan berbagai pantai di Selatan Pulau Jawa.",
                        style:  TextStyle( fontSize: 12, fontWeight: FontWeight.w500, color: Color.fromRGBO(35, 35, 35, 1)),),
                          ],),
                        ),
                      if(i == 'img/image-3.jpg')
                        Container(
                          child: Column(children: [
                            Text("Tugu Jogja", style:  TextStyle( fontSize: 25, fontWeight: FontWeight.w500, color: Color.fromRGBO(0, 139, 92, 1)),),
                            Text("Tugu Jogja merupakan landmark Kota Yogyakarta yang paling terkenal. Monumen ini berada tepat di tengah perempatan Jalan Pangeran Mangkubumi, Jalan Jendral Soedirman, Jalan A.M Sangaji dan Jalan Diponegoro.",
                        style:  TextStyle( fontSize: 12, fontWeight: FontWeight.w500, color: Color.fromRGBO(35, 35, 35, 1)),),
                          ],),
                        ),
                      if(i == 'img/image-4.jpg')
                        Container(
                          child: Column(children: [
                            Text("Candi Prambanan", style:  TextStyle( fontSize: 25, fontWeight: FontWeight.w500, color: Color.fromRGBO(0, 139, 92, 1)),),
                            Text("Candi Prambanan adalah candi Hindu terbesar di Indonesia sekaligus salah satu candi yang terindah di Asia Tenggara. Menurut prasasti Siwagrha, candi ini mulai dibangun pada masa pemerintahan Rakai Pikatan (pertengahan abad ke-9) dari Kerajaan Mataram Kuno.",
                        style:  TextStyle( fontSize: 12, fontWeight: FontWeight.w500, color: Color.fromRGBO(35, 35, 35, 1)),),
                          ],),
                        ),
                        
                      if(i == 'img/image-5.jpg')
                        Container(
                          child: Column(children: [
                            Text("Malioboro", style:  TextStyle( fontSize: 25, fontWeight: FontWeight.w500, color: Color.fromRGBO(0, 139, 92, 1)),),
                            Text("Malioboro merupakan nama sebuah jalan yang ada di Jogja yang terkenal sebagai wisata belanja legendaris di Indonesia. Banyak wisatawan manca negara yang mengidentikkan jalan malioboro sebagai jogja, jadi tak lengkap rasanya berkunjung ke Jogja tanpa berkunjung ke Jalan Malioboro Jogja.",
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
            margin : EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(children: [
                      Container(
                        height: 130,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromRGBO(0, 128, 85, 0.6),
                        ),
                        alignment: Alignment.center,
                        
                        child: Column(children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                            child: Column(
                              children: [
                                const Text('Bundle 1', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                                const Text('1. Snack \n2. Makan Siang \n3. Makan Malam \n4. Aksesoris', style: TextStyle(color: Colors.white, fontSize: 10)),
                              ],
                            ),
                          )
                          
                        ],)
                        
                      ), Spacer(),
                      Container(
                        height: 130,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromRGBO(0, 128, 85, 0.6),
                        ),
                        alignment: Alignment.center,
                        child: Column(children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                            child: Column(
                              children: [
                                const Text('Bundle 2', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                                const Text('1. Snack \n2. Makan Malam \n 3. Aksesoris', style: TextStyle(color: Colors.white, fontSize: 10)),
                              ],
                            ),
                          )
                          
                        ],)
                        // child: const Text('Bundle 2 \n murah \n makan siang',style: TextStyle(color: Colors.white)),
                      ), Spacer(),
                      Container(
                        height: 130,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromRGBO(0, 128, 85, 0.6),
                        ),
                        alignment: Alignment.center,
                        child: Column(children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                            child: Column(
                              children: [
                                const Text('Bundle 3', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                                const Text('1. Snack \n2. Aksesoris', style: TextStyle(color: Colors.white, fontSize: 10)),
                              ],
                            ),
                          )
                          
                        ],)
                        // child: const Text('Bundle 3 \n murah \n makan siang', style: TextStyle(color: Colors.white)),
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

