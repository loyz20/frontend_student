import 'package:flutter/material.dart';
import 'package:frontend_student/features/home/presentation/widgets/custom_banner.dart';
import 'package:frontend_student/features/home/presentation/widgets/custom_header.dart';
import 'package:frontend_student/features/home/presentation/widgets/custom_menu.dart';
import 'package:frontend_student/features/home/presentation/widgets/recent_activity.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const BannerSection(),
            const SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: MenuGrid(context: context),
            ),
            const SizedBox(height: 16.0),
            const RecentActivities(),  // Menambahkan Progress Overview di sini
          ],
        ),
      ),
    );
  }
}
