import 'package:flutter/material.dart';
import 'package:frontend_student/common/constants/colors.dart';
import 'package:frontend_student/common/widget/navigation.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      // ignore: use_build_context_synchronously
      navigateToTab(context);
    });

    return const Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Text(
          'School App',
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
