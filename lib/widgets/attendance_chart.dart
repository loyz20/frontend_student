import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartData {
  final String label;
  final double value;
  final Color color;

  ChartData(this.label, this.value, this.color);
}

class AttendanceChart extends StatelessWidget {
  final List<ChartData> data;

  const AttendanceChart({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: PieChart(
        PieChartData(
          sections: data
              .map(
                (d) => PieChartSectionData(
                  color: d.color,
                  value: d.value,
                  title: '${d.value}',
                  radius: 50,
                  titleStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
