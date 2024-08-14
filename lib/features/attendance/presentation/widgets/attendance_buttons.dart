import 'package:flutter/material.dart';

class AttendanceButtons extends StatelessWidget {
  final VoidCallback onMarkAttendanceIn;
  final VoidCallback onMarkAttendanceOut;

  const AttendanceButtons({
    super.key,
    required this.onMarkAttendanceIn,
    required this.onMarkAttendanceOut,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ElevatedButton.icon(
          onPressed: onMarkAttendanceIn,
          icon: const Icon(Icons.check_circle, size: 20.0),
          label: const Text(
            'Mark Attendance In',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white, backgroundColor: Colors.green,
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            elevation: 5.0,
          ),
        ),
        const SizedBox(height: 16.0),
        ElevatedButton.icon(
          onPressed: onMarkAttendanceOut,
          icon: const Icon(Icons.cancel, size: 20.0),
          label: const Text(
            'Mark Attendance Out',
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white, backgroundColor: Colors.red,
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            elevation: 5.0,
          ),
        ),
      ],
    );
  }
}
