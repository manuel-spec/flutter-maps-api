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
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: const Text('Home')), body: content()));
  }

  Widget content() {
    return FlutterMap(
      children: [OpenStreetMapTileLayer],
      options: MapOptions(
          initialCenter:
              LatLng(double.parse('37.7749'), double.parse('-122.4194')),
          initialZoom: 13.0,
          interactionOptions:
              InteractionOptions(flags: ~InteractiveFlag.doubleTapDragZoom)),
    );
  }
}

TileLayer get OpenStreetMapTileLayer => TileLayer(
      urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
      userAgentPackageName: 'dev.fleaflet.flutter_map.example',
    );

void main() => runApp(Home());
