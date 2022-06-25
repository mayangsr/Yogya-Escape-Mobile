import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart' as latlng;

class Maps extends StatefulWidget {
  const Maps({Key? key}) : super(key: key);

  @override
  State<Maps> createState() => _MapsState();
}

class _MapsState extends State<Maps> {
var points = [
  latlng.LatLng(-8.025378,110.3200166),
  latlng.LatLng(-7.7925711,110.3636543),
  latlng.LatLng(-8.1290121,110.5464972),
  latlng.LatLng(-7.7520153,110.4892787),
  latlng.LatLng(-7.7705363,110.4872271),];
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(),
  body: 
  
  
  FlutterMap(
    options: MapOptions(
      center: latlng.LatLng(-7.797068, 110.370529),
      minZoom: 10.0,
    ),
  layers: [
    TileLayerOptions(
    urlTemplate:
      "https://api.mapbox.com/styles/v1/fauzihzm/cl4bcdih2000o15s7odtbf1d7/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiZmF1emloem0iLCJhIjoiY2w0YmJlZHNkMWtkcjNjbHJtNDlzZTBleiJ9.6HamY-AGJH_lRitEbLpoKg",
      additionalOptions: {
      'accessToken':
      'pk.eyJ1IjoiZmF1emloem0iLCJhIjoiY2w0YmJlZHNkMWtkcjNjbHJtNDlzZTBleiJ9.6HamY-AGJH_lRitEbLpoKg',
      'id': 'mapbox.mapbox-streets-v8'
    },
      ),
      MarkerLayerOptions(
        markers: [
          Marker(
            width: 80,
            height: 80,
            point: latlng.LatLng(-7.7705363,110.4872271,),
            builder: (ctx) => Container(
            child: Icon(Icons.location_on),
            ),
            
          ),
          Marker(
            width: 80,
            height: 80,
            point: points[0],
            builder: (ctx) => Container(
            child: Icon(Icons.location_on),
            ),
            
          ),
          ],
        ),
        // new PolylineLayerOptions(polylines: [new Polyline(points: points, strokeWidth: 2.0, color:
        // Colors.red)
        // ])
        ],
        ));
        }
    
  }