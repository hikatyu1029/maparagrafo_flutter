import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapView extends StatefulWidget {
  @override
  State createState() => MapsViewState();
}

class MapsViewState extends State<MapView> {
  GoogleMapController mapController;

  @override
  Widget build(BuildContext context) {
    return Text("test");
  }

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      mapController = controller;
    });
  }
}
