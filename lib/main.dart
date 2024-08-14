import 'package:flutter/material.dart';
import 'package:frontend_student/common/theme/app_theme.dart';
import 'package:frontend_student/features/splash/presentation/pages/splash_page.dart';

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
      home: const SplashPage(),
    );
  }
}
