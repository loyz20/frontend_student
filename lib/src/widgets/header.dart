import 'package:flutter/material.dart';
import 'package:frontend_student/src/constants/app_constants.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  const Header({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Profile Section
          const Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage('https://via.placeholder.com/50x50?text=Profile'),
              ),
              SizedBox(width: 8.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Selamat Datang', style: TextStyle(fontSize: 12.0)),
                  Text('John Doe', style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ],
          ),
          // Actions Section
          Row(
            children: [
              // Notification Icon
              IconButton(
                icon: const Icon(Icons.notifications),
                onPressed: () {
                  // Handle notification button press
                },
              ),
            ],
          ),
        ],
      ),
      backgroundColor: AppColors.primary, // Custom color
    );
  }
}
