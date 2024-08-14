import 'package:geolocator/geolocator.dart';

class AttendanceRecord {
  final DateTime timestamp;
  final String type; // 'in' atau 'out'
  final Position position;

  AttendanceRecord({
    required this.timestamp,
    required this.type,
    required this.position,
  });
}
