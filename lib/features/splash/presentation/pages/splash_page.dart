import 'package:flutter/material.dart';
import 'package:frontend_student/common/constants/colors.dart';
import 'package:frontend_student/common/widget/navigation.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

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
