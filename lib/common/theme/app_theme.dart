import 'package:flutter/material.dart';
import 'package:frontend_student/common/constants/colors.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    // Warna primer dan aksen
    primarySwatch: Colors.blue,
    primaryColor: AppColors.primary,
    hintColor: AppColors.accent,

    // Warna latar belakang dan tekstur
    scaffoldBackgroundColor: AppColors.background,

    // Warna teks
    textTheme: const TextTheme(
      displayLarge: TextStyle(color: AppColors.textPrimary, fontWeight: FontWeight.bold, fontSize: 32.0),
      displayMedium: TextStyle(color: AppColors.textPrimary, fontWeight: FontWeight.bold, fontSize: 28.0),
      displaySmall: TextStyle(color: AppColors.textPrimary, fontWeight: FontWeight.bold, fontSize: 24.0),
      bodyLarge: TextStyle(color: AppColors.textPrimary, fontSize: 16.0),
      bodyMedium: TextStyle(color: AppColors.textSecondary, fontSize: 14.0),
    ),

    // Warna button
    buttonTheme: const ButtonThemeData(
      buttonColor: AppColors.primary,
      textTheme: ButtonTextTheme.primary,
    ),

    // Warna AppBar
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primary,
      foregroundColor: Colors.white,
      elevation: 4.0,
    ),

    // Warna Floating Action Button
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.secondary,
    ),

    // Warna border
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.border),
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),

    // Warna Card
    cardColor: Colors.white,
    cardTheme: CardTheme(
      color: Colors.white,
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),

    // Warna Snackbar
    snackBarTheme: const SnackBarThemeData(
      backgroundColor: AppColors.primary,
      contentTextStyle: TextStyle(color: Colors.white),
    ),

    // Warna Divider
    dividerColor: AppColors.border,

    // Warna Chip
    chipTheme: const ChipThemeData(
      backgroundColor: AppColors.background,
      selectedColor: AppColors.primary,
      secondarySelectedColor: AppColors.secondary,
      disabledColor: Colors.grey,
      selectedShadowColor: Colors.transparent,
      padding: EdgeInsets.all(8.0), // Menggunakan parameter padding
    ),
  );
}
