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
    initialCameraPosition = CameraPosition(
      zoom: 12,
      target: LatLng(31.196404175440488, 29.908860383519336),
    );
    initMarkers();
    super.initState();
  }

  @override
  void dispose() {
    googleMapController.dispose();

    super.dispose();
  }

  Set<Marker> markers = {};
  late GoogleMapController googleMapController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        markers: markers,
        onMapCreated: (controller) {
          googleMapController = controller;
          initMapStyle();
        },
        initialCameraPosition: initialCameraPosition,
      ),
    );
  }

  void initMapStyle() async {
    var nightMapStyle = await DefaultAssetBundle.of(
      context,
    ).loadString('assets/map_styles/night_map_style.json');

    googleMapController.setMapStyle(nightMapStyle);
  }

  void initMarkers() {
    var myMarker = Marker(
      markerId: MarkerId('1'),
      position: LatLng(31.196404175440488, 29.908860383519336),
    );
    markers.add(myMarker);


  }
}



// world view  0 -> 3
// country view 4 -> 6 
// city view 10 -> 12 
// street view 13 -> 17
// building view 18 -> 20
