// lib/src/themes/text_styles.dart

import 'package:flutter/material.dart';

// Gaya teks untuk header
TextStyle headerStyle({
  Color color = Colors.black,
  double fontSize = 24.0,
  FontWeight fontWeight = FontWeight.bold,
}) {
  return TextStyle(
    color: color,
    fontSize: fontSize,
    fontWeight: fontWeight,
    fontFamily: 'Roboto', // Sesuaikan dengan font yang Anda gunakan
  );
}

// Gaya teks untuk sub-header
TextStyle subHeaderStyle({
  Color color = Colors.black54,
  double fontSize = 20.0,
  FontWeight fontWeight = FontWeight.w600,
}) {
  return TextStyle(
    color: color,
    fontSize: fontSize,
    fontWeight: fontWeight,
    fontFamily: 'Roboto', // Sesuaikan dengan font yang Anda gunakan
  );
}

// Gaya teks untuk body
TextStyle bodyStyle({
  Color color = Colors.black87,
  double fontSize = 16.0,
  FontWeight fontWeight = FontWeight.normal,
}) {
  return TextStyle(
    color: color,
    fontSize: fontSize,
    fontWeight: fontWeight,
    fontFamily: 'Roboto', // Sesuaikan dengan font yang Anda gunakan
  );
}

// Gaya teks untuk caption
TextStyle captionStyle({
  Color color = Colors.grey,
  double fontSize = 14.0,
  FontWeight fontWeight = FontWeight.normal,
}) {
  return TextStyle(
    color: color,
    fontSize: fontSize,
    fontWeight: fontWeight,
    fontFamily: 'Roboto', // Sesuaikan dengan font yang Anda gunakan
  );
}

// Gaya teks untuk tombol
TextStyle buttonStyle({
  Color color = Colors.white,
  double fontSize = 16.0,
  FontWeight fontWeight = FontWeight.bold,
}) {
  return TextStyle(
    color: color,
    fontSize: fontSize,
    fontWeight: fontWeight,
    fontFamily: 'Roboto', // Sesuaikan dengan font yang Anda gunakan
  );
}
