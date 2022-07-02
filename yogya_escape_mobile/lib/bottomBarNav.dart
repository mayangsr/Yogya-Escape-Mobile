import 'package:yogya_escape_mobile/gallery.dart';
import 'package:yogya_escape_mobile/main.dart';
import 'package:yogya_escape_mobile/articles.dart';
import 'package:yogya_escape_mobile/home.dart';
import 'package:flutter/material.dart';
import 'package:yogya_escape_mobile/maps.dart';
import 'package:yogya_escape_mobile/tourguidePage.dart';

//  referensi: https://www.fluttertpoint.com/bottom-navigation-in-flutter#:~:text=Bottom%20Navigation%20Bar%20In%20Flutter,the%20name%20or%20the%20icon.&text=We%20creates%20the%20routes%20at%20the%20bottom%20of%20the%20screen.

class MainBottomClass extends StatefulWidget {
  const MainBottomClass({Key? key}) : super(key: key);

  @override
  _MainBottomClassState createState() => _MainBottomClassState();
}

class _MainBottomClassState extends State<MainBottomClass> {
  int selectedIndex = 0;

  //list of widgets to call ontap
  final widgetOptions = [
    new home(), 
    new gallery(),
    new tourguidePage(),
    new Articles(),
    new Maps()
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  // final widgetTitle = ["Home", "Gallery", "Tour Guides", "Articles"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30)
        ),
        boxShadow: [BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10)],
      ),
      child: ClipRRect(borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30.0),
      ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: "Home"),  
          BottomNavigationBarItem(
              icon: Icon(
                Icons.photo_library_outlined,
              ),
              label: "Gallery"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_pin_outlined,
              ),
              label: "TourGuides"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.article_outlined,
              ),
              label: "Articles"), 
          BottomNavigationBarItem(
              icon: Icon(
                Icons.maps_home_work,
              ),
              label: "Maps")       
        ],
        currentIndex: selectedIndex,
        fixedColor: Color.fromRGBO(0, 139, 92, 1.0),
        onTap: onItemTapped,
        selectedLabelStyle: TextStyle(fontSize: 14, fontFamily: 'robotoSlab'),
        unselectedFontSize: 12,
        selectedIconTheme:
            IconThemeData(color: Colors.green, opacity: 1.0, size: 20.0),
        unselectedIconTheme: IconThemeData(color: Colors.grey, opacity: 1.0, size: 15.0),
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: TextStyle(fontSize: 12, fontFamily: 'robotoSlab'),
      ),
      ),
    ),
    );
  }
}