import 'package:flutter/material.dart';

class ProgressOverview extends StatefulWidget {
  const ProgressOverview({super.key});

  @override
  _ProgressOverviewState createState() => _ProgressOverviewState();
}

class _ProgressOverviewState extends State<ProgressOverview> {
  String _selectedMonth = 'Agustus'; // Bulan default yang dipilih
  final List<String> _months = [
    'Januari',
    'Februari',
    'Maret',
    'April',
    'Mei',
    'Juni',
    'Juli',
    'Agustus',
    'September',
    'Oktober',
    'November',
    'Desember'
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.0),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Progress Overview',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                DropdownButton<String>(
                  value: _selectedMonth,
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedMonth = newValue!;
                      // Tambahkan logika untuk memperbarui data sesuai bulan yang dipilih
                    });
                  },
                  items: _months.map<DropdownMenuItem<String>>((String month) {
                    return DropdownMenuItem<String>(
                      value: month,
                      child: Text(month),
                    );
                  }).toList(),
                ),
              ],
            ),
            const SizedBox(height: 16),
            _buildProgressItem('Masuk', '15 Hari', Colors.green),
            const SizedBox(height: 8),
            _buildProgressItem('Sakit', '3 Hari', Colors.blue),
            const SizedBox(height: 8),
            _buildProgressItem('Izin', '2 Hari', Colors.orange),
            const SizedBox(height: 8),
            _buildProgressItem('Tanpa Keterangan', '2 Hari', Colors.red),
          ],
        ),
      ),
    );
  }

  Widget _buildProgressItem(String title, String value, Color color) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
      ],
    );
  }
}
