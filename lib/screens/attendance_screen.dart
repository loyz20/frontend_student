import 'package:flutter/material.dart';
import 'package:frontend_student/widgets/attendance_chart.dart';
import 'package:frontend_student/widgets/attendance_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class AttendanceScreen extends StatefulWidget {
  const AttendanceScreen({super.key});

  @override
  AttendanceScreenState createState() => AttendanceScreenState();
}

class AttendanceScreenState extends State<AttendanceScreen> {
  final ImagePicker _picker = ImagePicker();
  File? _image;
  Position? _currentPosition;
  final double _targetLatitude = -7.341582; // Ganti dengan latitude lokasi absensi
  final double _targetLongitude = 108.251175; // Ganti dengan longitude lokasi absensi
  final double _targetRadius = 100; // Radius dalam meter
  final LocationSettings locationSettings = const LocationSettings(
    accuracy: LocationAccuracy.high,
    distanceFilter: 100,
  );

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  Future<void> _getCurrentLocation() async {
    Position position = await Geolocator.getCurrentPosition(locationSettings: locationSettings);
    setState(() {
      _currentPosition = position;
    });
  }

  bool _isWithinRadius() {
    if (_currentPosition == null) return false;
    double distance = Geolocator.distanceBetween(
      _currentPosition!.latitude,
      _currentPosition!.longitude,
      _targetLatitude,
      _targetLongitude,
    );
    return distance <= _targetRadius;
  }

  Future<void> _takeSelfie() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.camera);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        debugPrint('No image selected.');
      }
    });
  }

  void _submitAttendance() {
    if (_isWithinRadius() && _image != null) {
      // Logic untuk submit absensi
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Absensi berhasil')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Pastikan berada di lokasi dan sudah mengambil foto')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Absensi')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Lokasi Absensi',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: AttendanceMap(
                targetLatitude: _targetLatitude,
                targetLongitude: _targetLongitude,
                targetRadius: _targetRadius,
                currentPosition: _currentPosition,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: _takeSelfie,
              icon: const Icon(Icons.camera_alt),
              label: const Text('Ambil Foto Selfie'),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 10),
            _image != null
                ? Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: Image.file(_image!, fit: BoxFit.cover),
                  )
                : const Center(child: Text('Belum ada foto')),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: _submitAttendance,
              icon: const Icon(Icons.check),
              label: const Text('Absensi'),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 20),
            _buildAttendanceReport(),
          ],
        ),
      ),
    );
  }

  Widget _buildAttendanceReport() {
    final data = [
      ChartData('Masuk', 20, Colors.green),
      ChartData('Sakit', 5, Colors.red),
      ChartData('Izin', 3, Colors.yellow),
      ChartData('Tanpa Keterangan', 2, Colors.grey),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Laporan Absensi Bulanan',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: AttendanceChart(data: data),
        ),
      ],
    );
  }
}
