import 'package:flutter/material.dart';
import 'package:frontend_student/common/constants/colors.dart';

Widget menuicon(IconData icon, String label, BuildContext context) {
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('$label clicked')),
        );
        // Aksi lain dapat ditambahkan di sini
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5.0,
              spreadRadius: 1.0,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 20.0, color: AppColors.primary),
            const SizedBox(height: 10.0),
            Text(
              label,
              style: const TextStyle(fontSize: 9.0, fontWeight: FontWeight.w100),
            ),
          ],
        ),
      ),
    );
  }
