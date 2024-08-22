import 'package:flutter/material.dart';
import 'package:frontend_student/src/widgets/menu_icon.dart';

class MenuGrid extends StatelessWidget {
  const MenuGrid({super.key, required BuildContext context});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 4, // Jumlah kolom
      crossAxisSpacing: 16.0, // Jarak antar kolom
      mainAxisSpacing: 16.0, // Jarak antar baris
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      children: [
        MenuIcon(
          icon: Icons.book,
          tooltipMessage: 'Exams: View and manage exams',
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Exams clicked')),
            );
          },
        ),
        MenuIcon(
          icon: Icons.school,
          tooltipMessage: 'Materi: Access study materials',
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Materi clicked')),
            );
          },
        ),
        MenuIcon(
          icon: Icons.announcement,
          tooltipMessage: 'Pengumuman: Check announcements',
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Pengumuman clicked')),
            );
          },
        ),
        MenuIcon(
          icon: Icons.calendar_month,
          tooltipMessage: 'Jadwal: View schedule',
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Jadwal clicked')),
            );
          },
        ),
      ],
    );
  }
}
