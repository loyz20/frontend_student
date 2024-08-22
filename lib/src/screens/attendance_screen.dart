import 'dart:async';
import 'package:flutter/material.dart';
import 'package:frontend_student/src/repositories/attendance_record.dart';
import 'package:frontend_student/src/widgets/header.dart';
import 'package:image_picker/image_picker.dart';
import 'package:geolocator/geolocator.dart';
import 'package:frontend_student/src/widgets/attendance_buttons.dart';
import 'package:frontend_student/src/widgets/selfie_section.dart';
import 'package:frontend_student/src/widgets/attendance_history.dart';

class AttendanceScreen extends StatefulWidget {
  const AttendanceScreen({super.key});

  @override
  AttendanceScreenState createState() => AttendanceScreenState();
}

class AttendanceScreenState extends State<AttendanceScreen> {
  final ImagePicker _picker = ImagePicker();
  XFile? _image;
  Position? _currentPosition;
  double _distanceToLocation = 0.0;
  final List<AttendanceRecord> _attendanceRecords = [];
  final LocationSettings locationSettings = const LocationSettings(
  accuracy: LocationAccuracy.high,
  distanceFilter: 100,
);

  final Position _schoolLocation = Position(
    latitude: 37.7749,
    longitude: -122.4194,
    timestamp: DateTime.now(),
    accuracy: 0.0,
    altitude: 0.0,
    heading: 0.0,
    speed: 0.0,
    speedAccuracy: 0.0, altitudeAccuracy: 0.0, headingAccuracy: 0.0,
  );

  Future<void> _takeSelfie() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = image;
    });
  }

  Future<void> _getCurrentLocation() async {
    Position position = await Geolocator.getCurrentPosition(locationSettings: locationSettings);
    setState(() {
      _currentPosition = position;
      if (_currentPosition != null) {
        _distanceToLocation = Geolocator.distanceBetween(
          _currentPosition!.latitude,
          _currentPosition!.longitude,
          _schoolLocation.latitude,
          _schoolLocation.longitude,
        );
      }
    });
  }

  Future<void> _markAttendance(String type) async {
    if (_image == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please take a selfie first.')),
      );
      return;
    }

    if (_currentPosition == null) {
      await _getCurrentLocation();
    }

    // Simulate saving attendance record
    final newRecord = AttendanceRecord(
      timestamp: DateTime.now(),
      type: type,
      position: _currentPosition!,
    );
    setState(() {
      _attendanceRecords.add(newRecord);
    });

    // ignore: use_build_context_synchronously
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Attendance $type marked successfully!')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(),
      body: Container(
        color: Colors.grey[200],
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SelfieSection(
                      image: _image,
                      onTakeSelfie: _takeSelfie,
                    ),
                    const SizedBox(height: 24.0),
                    if (_currentPosition != null)
                      Text(
                        'Distance to School: ${(_distanceToLocation / 1000).toStringAsFixed(2)} km',
                        style: const TextStyle(
                          fontSize: 16.0, 
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                    const SizedBox(height: 24.0),
                    AttendanceButtons(
                      onMarkAttendanceIn: () async => await _markAttendance('in'),
                      onMarkAttendanceOut: () async => await _markAttendance('out'),
                    ),
                    const SizedBox(height: 24.0),
                    const Divider(height: 32.0, thickness: 2.0),
                    AttendanceHistory(records: _attendanceRecords),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
