import 'package:flutter/material.dart';
import 'package:frontend_student/src/screens/splash_screen.dart';
import 'package:frontend_student/src/themes/app_theme.dart';

void main() {
  runApp(const SchoolApp());
}

class SchoolApp extends StatelessWidget {
  const SchoolApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'School App',
      theme: AppTheme.lightTheme,
      home: const SplashScreen(),
    );
  }
}
