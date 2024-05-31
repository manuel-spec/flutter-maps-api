import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: content()));
  }

  Widget content() {
    return FlutterMap(
      children: [
        OpenStreetMapTileLayer,
        MarkerLayer(markers: [
          Marker(
            width: 80.0,
            height: 80.0,
            point: LatLng(double.parse('9.0192'), double.parse('38.7525')),
            child: Icon(Icons.location_on, size: 40.0, color: Colors.red),
          ),
        ])
      ],
      options: MapOptions(
        initialCenter:
            // 9.0192° N, 38.7525° E
            LatLng(double.parse('9.0192'), double.parse('38.7525')),
        initialZoom: 13.0,
        interactionOptions:
            InteractionOptions(flags: ~InteractiveFlag.doubleTapDragZoom),
      ),
    );
  }
}

TileLayer get OpenStreetMapTileLayer => TileLayer(
      urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
      userAgentPackageName: 'dev.fleaflet.flutter_map.example',
    );

void main() => runApp(Home());
