import 'package:flutter/material.dart';
import 'package:frontend_student/screens/attendance_screen.dart';
import 'package:frontend_student/screens/maintance_screen.dart';
import 'package:frontend_student/widgets/menu_icon.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2, // Mengurangi jumlah kolom untuk tampilan yang lebih luas
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          children: [
            MenuIcon(
              icon: Icons.school,
              label: 'Exam',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MaintanceScreen()), // Ganti dengan layar tujuan
                );
              },
            ),
            MenuIcon(
              icon: Icons.check,
              label: 'Present',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AttendanceScreen()), // Ganti dengan layar tujuan
                );
              },
            ),
            MenuIcon(
              icon: Icons.warning,
              label: 'Pelanggaran',
              onTap: () {
                // Navigate to Pelanggaran screen
              },
            ),
            MenuIcon(
              icon: Icons.book,
              label: 'Materi',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MaintanceScreen()), // Ganti dengan layar tujuan
                );
              },
            ),
            MenuIcon(
              icon: Icons.assignment,
              label: 'Tugas',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MaintanceScreen()), // Ganti dengan layar tujuan
                );
              },
            ),
            MenuIcon(
              icon: Icons.account_circle,
              label: 'Akun',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MaintanceScreen()), // Ganti dengan layar tujuan
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
