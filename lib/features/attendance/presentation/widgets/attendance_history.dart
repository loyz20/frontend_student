import 'package:flutter/material.dart';
import 'package:frontend_student/features/attendance/data/models/attendance_record.dart';

class AttendanceHistory extends StatelessWidget {
  final List<AttendanceRecord> records;

  const AttendanceHistory({
    super.key,
    required this.records,
  });

  @override
  Widget build(BuildContext context) {
    if (records.isEmpty) {
      return const Center(
        child: Text('No attendance records available.'),
      );
    }

    return ListView.builder(
      itemCount: records.length,
      itemBuilder: (context, index) {
        final record = records[index];
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 8.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 4.0,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: ListTile(
            contentPadding: const EdgeInsets.all(16.0),
            title: Text(
              '${record.type == 'in' ? 'Checked In' : 'Checked Out'} at ${record.timestamp}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text('Location: (${record.position.latitude}, ${record.position.longitude})'),
          ),
        );
      },
    );
  }
}
