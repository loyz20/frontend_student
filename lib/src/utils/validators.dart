// lib/src/utils/validators.dart

// Validasi alamat email
String? validateEmail(String? email) {
  if (email == null || email.isEmpty) {
    return 'Email tidak boleh kosong';
  }
  final RegExp emailRegExp = RegExp(
    r'^[^\s@]+@[^\s@]+\.[^\s@]+$',
    caseSensitive: false,
  );
  if (!emailRegExp.hasMatch(email)) {
    return 'Email tidak valid';
  }
  return null;
}

// Validasi nomor telepon (contoh format internasional sederhana)
String? validatePhoneNumber(String? phoneNumber) {
  if (phoneNumber == null || phoneNumber.isEmpty) {
    return 'Nomor telepon tidak boleh kosong';
  }
  final RegExp phoneRegExp = RegExp(
    r'^\+?[1-9]\d{1,14}$',
  );
  if (!phoneRegExp.hasMatch(phoneNumber)) {
    return 'Nomor telepon tidak valid';
  }
  return null;
}

// Validasi password
String? validatePassword(String? password) {
  if (password == null || password.isEmpty) {
    return 'Password tidak boleh kosong';
  }
  if (password.length < 6) {
    return 'Password harus terdiri dari minimal 6 karakter';
  }
  return null;
}

// Validasi konfirmasi password
String? validateConfirmPassword(String? confirmPassword, String password) {
  if (confirmPassword == null || confirmPassword.isEmpty) {
    return 'Konfirmasi password tidak boleh kosong';
  }
  if (confirmPassword != password) {
    return 'Password dan konfirmasi password tidak cocok';
  }
  return null;
}

// Validasi nama pengguna (username)
String? validateUsername(String? username) {
  if (username == null || username.isEmpty) {
    return 'Nama pengguna tidak boleh kosong';
  }
  if (username.length < 3) {
    return 'Nama pengguna harus terdiri dari minimal 3 karakter';
  }
  return null;
}

// Validasi URL
String? validateUrl(String? url) {
  if (url == null || url.isEmpty) {
    return 'URL tidak boleh kosong';
  }
  final RegExp urlRegExp = RegExp(
    r'^(https?|ftp):\/\/[^\s/$.?#].[^\s]*$',
    caseSensitive: false,
  );
  if (!urlRegExp.hasMatch(url)) {
    return 'URL tidak valid';
  }
  return null;
}
