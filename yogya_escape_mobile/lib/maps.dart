import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'article_model.dart';

class MapPage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MapPage> {

  final LatLng pantaibaron = LatLng(-8.1288377,110.5449296,);
  final LatLng parangtritis = LatLng(-8.0236813,110.3281033);
  final LatLng malioboro = LatLng(-7.7926402,110.3636573);
  final LatLng prambanan = LatLng(-7.75201,110.48709);
  final LatLng ratuboko = LatLng(-7.770531,110.4850384);
  final LatLng candiijo = LatLng(-7.78541,110.5039671);
  final LatLng keraton = LatLng(-7.8052792,110.3599759);
  final LatLng alkid = LatLng(-7.8118374,110.3610104);
  final LatLng hutanpinus = LatLng(-7.928474,110.4285021);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Maps", style: TextStyle(color: Color.fromRGBO(0, 139, 92, 1), fontSize: 32, fontFamily: 'robotoSlab'),),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          MyMap(
            tempat: pantaibaron,
            title: 'Pantai Baron',
          ),
          MyMap(
            tempat: parangtritis,
            title: 'Pantai Parangtritis',
          ),
          MyMap(
            tempat: malioboro,
            title: 'Malioboro',
          ),
          MyMap(
            tempat: prambanan,
            title: 'Candi Prambanan',
          ),    
          MyMap(
            tempat: ratuboko,
            title: 'Candi Ratu Boko',
          ),
          MyMap(
            tempat: candiijo,
            title: 'Candi Ijo',
          ),
          MyMap(
            tempat: keraton,
            title: 'Keraton Yogyakarta',
          ),
          MyMap(
            tempat: alkid,
            title: 'Alun-alun Kidul Yogyakarta',
          ),
          MyMap(
            tempat: hutanpinus,
            title: 'Hutan Pinus Mangunan',
          ),
        ],
      ),
    );
  }
}

class MyMap extends StatelessWidget {
  const MyMap({Key? key, required this.tempat, this.title})
      : super(key: key);

  final LatLng tempat;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0)
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 5.0),
        child: Column(
          children: <Widget>[
            Text(
              title!,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(0, 139, 92, 1),
                  fontFamily: 'robotoSlab'
              ),
            ),
            SizedBox(height: 10,),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 300.0,
                child: GoogleMap(
                  initialCameraPosition:
                      CameraPosition(target: tempat, zoom: 15.0),
                  markers: <Marker>[
                    Marker(
                      markerId: MarkerId('tempat'),
                      position: tempat,
                      infoWindow: InfoWindow(
                        title: title!,
                      ),
                    ),
                  ].toSet(),
                  gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>[
                    Factory<OneSequenceGestureRecognizer>(
                        () => ScaleGestureRecognizer()),
                  ].toSet(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// referensi: https://www.udacoding.com/implementation-google-maps-in-flutter-2-0/