// lib/src/utils/formatters.dart

import 'package:intl/intl.dart';

// Format tanggal menjadi string
String formatDate(DateTime date, {String format = 'yyyy-MM-dd'}) {
  return DateFormat(format).format(date);
}

// Format angka menjadi string dengan pemisah ribuan
String formatNumber(double number, {String locale = 'en_US'}) {
  final NumberFormat formatter = NumberFormat('#,##0.00', locale);
  return formatter.format(number);
}

// Validasi alamat email
bool isValidEmail(String email) {
  final RegExp emailRegExp = RegExp(
    r'^[^\s@]+@[^\s@]+\.[^\s@]+$',
    caseSensitive: false,
  );
  return emailRegExp.hasMatch(email);
}

// Validasi nomor telepon (contoh format internasional sederhana)
bool isValidPhoneNumber(String phoneNumber) {
  final RegExp phoneRegExp = RegExp(
    r'^\+?[1-9]\d{1,14}$',
  );
  return phoneRegExp.hasMatch(phoneNumber);
}

// Format mata uang
String formatCurrency(double amount, {String locale = 'en_US', String symbol = '\$'}) {
  final NumberFormat formatter = NumberFormat.simpleCurrency(locale: locale, name: symbol);
  return formatter.format(amount);
}

// Menghapus semua karakter non-numeric dari string
String removeNonNumeric(String input) {
  return input.replaceAll(RegExp(r'[^\d]'), '');
}
