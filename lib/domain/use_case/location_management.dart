import 'package:geolocator/geolocator.dart';
import 'package:misiontic_template/data/services/geolocation.dart';

class LocationManager {
  final gpsService = GpsService();

  Future<Position> getCurrentLocation() async {
    // TODO Retorna la ubicacion actual
  }
}
