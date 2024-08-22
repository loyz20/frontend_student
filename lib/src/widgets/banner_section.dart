import 'package:flutter/material.dart';

class BannerSection extends StatelessWidget {
  const BannerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200.0, // Tinggi banner yang lebih besar
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://via.placeholder.com/1200x200?text=Banner+Image'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(16.0)), // Radius sudut bawah
      ),
      child: Stack(
        children: [
          // Overlay untuk kontras
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black.withOpacity(0.6), Colors.black.withOpacity(0.3)],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
          Center(
            child: Text(
              'Welcome to Our School',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    blurRadius: 6.0,
                    color: Colors.black.withOpacity(0.5),
                    offset: const Offset(2.0, 2.0),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
