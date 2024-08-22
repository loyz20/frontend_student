import 'package:flutter/material.dart';
import 'package:frontend_student/src/constants/app_constants.dart';
import 'package:frontend_student/src/utils/navigation.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      // ignore: use_build_context_synchronously
      navigateToLogin(context);
    });

    return const Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Animated logo or icon can be added here
            Hero(
              tag: 'app-logo',
              child: Icon(
                Icons.school,
                color: Colors.white,
                size: 80,
              ),
            ),
            SizedBox(height: 24),
            Text(
              'School App',
              style: TextStyle(
                color: Colors.white,
                fontSize: 36,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
            SizedBox(height: 16),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
