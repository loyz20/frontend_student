import 'package:flutter/material.dart';
import 'package:frontend_student/src/screens/bottom_nav_bar.dart';
import 'package:frontend_student/src/screens/home_screen.dart';
import 'package:frontend_student/src/screens/login_screen.dart';
import 'package:frontend_student/src/screens/register_screen.dart';

void navigateToLogin(BuildContext context) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => LoginScreen()),
  );
}

void navigateToHome(BuildContext context) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => const HomeScreen()),
  );
}

void navigateToTab(BuildContext context) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => const BottomNavBar()),
  );
}

void navigateToRegister(BuildContext context) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => const RegisterScreen()),
  );
}

