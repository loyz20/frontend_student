import 'package:flutter/material.dart';
import 'package:frontend_student/src/widgets/banner_section.dart';
import 'package:frontend_student/src/widgets/header.dart';
import 'package:frontend_student/src/widgets/menu_grid.dart';
import 'package:frontend_student/src/widgets/recent_activity.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
