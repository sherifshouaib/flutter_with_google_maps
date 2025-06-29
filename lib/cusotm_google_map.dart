import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CustomGoogleMap extends StatefulWidget {
  const CustomGoogleMap({super.key});

  @override
  State<CustomGoogleMap> createState() => _CustomGoogleMapState();
}

class _CustomGoogleMapState extends State<CustomGoogleMap> {
  late CameraPosition initialCameraPosition;

  void initState() {
    super.initState();
    initialCameraPosition = CameraPosition(
      zoom: 12,
      target: LatLng(31.196404175440488, 29.908860383519336),
    );
  }

  // @override
  // void dispose() {
  //   googleMapController.dispose();
  //   super.dispose();
  // }

  // late GoogleMapController googleMapController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        // mapType: MapType.satellite,
        //  zoomControlsEnabled: false,
        // onMapCreated: (controller) {
        //   googleMapController = controller;
        // },
        // cameraTargetBounds:

        //  CameraTargetBounds(
        //   LatLngBounds(
        //     southwest: LatLng(31.10767212662318, 29.768784708530063),
        //     northeast: LatLng(31.21872100749603, 30.16909901499451),
        //   ),
        // ),
        initialCameraPosition: initialCameraPosition,
      ),
    );
  }
}



// world view  0 -> 3
// country view 4 -> 6 
// city view 10 -> 12 
// street view 13 -> 17
// building view 18 -> 20
