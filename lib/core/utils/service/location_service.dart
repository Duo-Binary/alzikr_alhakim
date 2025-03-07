import 'package:geolocator/geolocator.dart' as geolocator;
import 'package:location/location.dart';

class LocationService {
  final Location _location = Location();

  Future<bool> _checkServiceEnabled() async {
    bool serviceEnabled = await _location.serviceEnabled();
    if (!serviceEnabled) {
      return await _location.requestService();
    }
    return serviceEnabled;
  }

  Future<bool> _checkLocationPermission() async {
    PermissionStatus permission = await _location.hasPermission();
    if (permission == PermissionStatus.deniedForever) {
      return false;
    }
    if (permission == PermissionStatus.denied) {
      permission = await _location.requestPermission();

      return permission == PermissionStatus.granted;
    }

    return permission == PermissionStatus.granted;
  }

  Future<geolocator.Position?> getCurrentLocation() async {
    if (await _checkServiceEnabled()) {
      if (await _checkLocationPermission()) {
        final location = await geolocator.Geolocator.getCurrentPosition();

        return location;
      }
    }
    return null;
  }
}
