import 'package:flutter/material.dart';
import 'package:frontend_student/features/home/presentation/widgets/custom_carousel.dart';
import 'package:frontend_student/features/home/presentation/widgets/menu_icon.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  
  static const List<String> imgList = [
    'https://via.placeholder.com/600x300?text=Slide+1',
    'https://via.placeholder.com/600x300?text=Slide+2',
    'https://via.placeholder.com/600x300?text=Slide+3',
    'https://via.placeholder.com/600x300?text=Slide+4',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16.0),
            const CustomCarousel(imgList: imgList),  // Menggunakan widget CustomCarousel
            const SizedBox(height: 16.0),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 4, // Jumlah kolom
              crossAxisSpacing: 16.0, // Jarak antar kolom
              mainAxisSpacing: 16.0, // Jarak antar baris
              padding: const EdgeInsets.all(16.0),
              children: [
                menuicon(Icons.check, 'Attendance', context),
                menuicon(Icons.book, 'Exams', context),
                menuicon(Icons.school, 'Materials', context),
                menuicon(Icons.library_books, 'Library', context),
              ],
            ),
          ],
        ),
      ),
    );
  }
}