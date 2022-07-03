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
  final LatLng parangtritis = LatLng(-8.0253554,110.2949525);
  final LatLng malioboro = LatLng(-7.7926402,110.3636573);
  final LatLng prambanan = LatLng(-7.75201,110.48709);
  final LatLng ratuboko = LatLng(-7.770531,110.4850384);
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
    // final artikel = ModalRoute.of(context)!.settings.arguments as Post;
    return Card(
      child: Padding(
        padding: EdgeInsets.all(32.0),
        child: Column(
          children: <Widget>[
            Text(
              title!,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            Center(
              child: SizedBox(
                width: 300.0,
                height: 300.0,
                child: GoogleMap(
                  initialCameraPosition:
                      CameraPosition(target: tempat, zoom: 15.0),
                  markers: <Marker>[
                    Marker(
                      markerId: MarkerId('tempat'),
                      position: tempat,
                      infoWindow: InfoWindow(
                        title: 'Nama Tempat',
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

