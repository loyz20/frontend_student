import 'package:flutter/material.dart';
import 'package:frontend_student/features/auth/presentation/pages/login_page.dart';
import 'package:frontend_student/features/home/presentation/pages/home_page.dart';
import 'package:frontend_student/features/tab_navigation/widgets/bottom_nav_bar.dart';

void navigateToLogin(BuildContext context) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => LoginPage()),
  );
}

void navigateToHome(BuildContext context) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => const HomePage()),
  );
}

void navigateToTab(BuildContext context) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => const BottomNavBar()),
  );
}
