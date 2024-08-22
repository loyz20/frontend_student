import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:frontend_student/src/constants/app_constants.dart';

class RecentActivities extends StatelessWidget {
  const RecentActivities({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'History Pelanggaran',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 12.0),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.background,
              borderRadius: BorderRadius.circular(12.0),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 8.0,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 200.0, // Tetapkan tinggi yang sesuai
                    child: PieChart(
                      PieChartData(
                        sections: _createPieChartSections(),
                        borderData: FlBorderData(show: false),
                        sectionsSpace: 2,
                        centerSpaceRadius: 40,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  _buildLegend(), // Menambahkan legend di bawah chart
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> _createPieChartSections() {
    return [
      PieChartSectionData(
        color: Colors.blueAccent,
        value: 40,
        title: '40%',
        radius: 40,
        titleStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      PieChartSectionData(
        color: Colors.redAccent,
        value: 30,
        title: '30%',
        radius: 40,
        titleStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      PieChartSectionData(
        color: Colors.greenAccent,
        value: 20,
        title: '20%',
        radius: 40,
        titleStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      PieChartSectionData(
        color: Colors.yellowAccent,
        value: 10,
        title: '10%',
        radius: 40,
        titleStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ];
  }

  Widget _buildLegend() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _LegendItem(color: Colors.blueAccent, text: 'Category 1 - 40%'),
        _LegendItem(color: Colors.redAccent, text: 'Category 2 - 30%'),
        _LegendItem(color: Colors.greenAccent, text: 'Category 3 - 20%'),
        _LegendItem(color: Colors.yellowAccent, text: 'Category 4 - 10%'),
      ],
    );
  }
}

class _LegendItem extends StatelessWidget {
  final Color color;
  final String text;

  const _LegendItem({required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4.0),
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 8.0),
          Text(
            text,
            style: const TextStyle(fontSize: 12.0, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
