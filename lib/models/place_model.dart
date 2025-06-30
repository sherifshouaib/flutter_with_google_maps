import 'package:google_maps_flutter/google_maps_flutter.dart';

class PlaceModel {
  final int id;
  final String name;
  final LatLng latLng;

  PlaceModel({required this.id, required this.name, required this.latLng});
}

List<PlaceModel> places = [
  PlaceModel(
    id: 1,
    name: 'أسواق العمدة',
    latLng: LatLng(31.114059584691944, 29.792089952095406),
  ),
  PlaceModel(
    id: 1,
    name: 'المعتز لصرف السلع التموينية',
    latLng: LatLng(31.114028009912566, 29.791725842244),
  ),
  PlaceModel(
    id: 1,
    name: 'الصابرين',
    latLng: LatLng(31.114196791338543, 29.792042342888315),
  ),
];
