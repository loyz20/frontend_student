// home_tab.dart
import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AttendanceTab'),
      ),
      body: const Center(
        child: Text('This is the AttendanceTab'),
      ),
    );
  }
}
