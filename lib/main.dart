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
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: const Center(
        child: Text('Home Page'),
      ),
    );
  }

  Widget content() {
    return FlutterMap(
      children: [],
      options: MapOptions(
        initialCenter:
            LatLng(double.parse('37.7749'), double.parse('-122.4194')),
      ),
    );
  }
}
