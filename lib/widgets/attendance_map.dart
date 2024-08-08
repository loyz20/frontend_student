import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:geolocator/geolocator.dart';

class AttendanceMap extends StatelessWidget {
  final double targetLatitude;
  final double targetLongitude;
  final double targetRadius;
  final Position? currentPosition;

  const AttendanceMap({
    super.key,
    required this.targetLatitude,
    required this.targetLongitude,
    required this.targetRadius,
    this.currentPosition,
  });

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        initialCenter : LatLng(targetLatitude, targetLongitude),
        initialZoom : 15.0,
      ),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
        ),
        CircleLayer(
          circles: [
            CircleMarker(
              point: LatLng(targetLatitude, targetLongitude),
              color: Colors.blue.withOpacity(0.3),
              borderColor: Colors.blue,
              borderStrokeWidth: 2.0,
              radius: targetRadius.toDouble(),
            ),
          ],
        ),
        MarkerLayer(
          markers: [
            if (currentPosition != null)
              Marker(
                point: LatLng(currentPosition!.latitude, currentPosition!.longitude),
                width: 80,
                height: 80,
                child: const Icon(
                  Icons.location_pin,
                  color: Colors.red,
                  size: 40,
                ),
              ),
            Marker(
              point: LatLng(targetLatitude, targetLongitude),
              width: 80,
              height: 80,
              child: const Icon(
                Icons.location_on,
                color: Colors.blue,
                size: 40,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
