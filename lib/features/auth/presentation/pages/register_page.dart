import 'package:flutter/material.dart';
import 'package:frontend_student/common/constants/colors.dart';
import 'package:frontend_student/common/widget/navigation.dart';
import 'package:frontend_student/common/widget/primary_button.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _nisController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _nisValid = false;
  bool _nisChecked = false;

  void _checkNIS() {
    // Simulasi pengecekan NIS
    setState(() {
      _nisChecked = true;
      _nisValid = _nisController.text == '123456'; // Contoh NIS yang valid
    });
  }

  void _register() {
    // Implementasi logika registrasi di sini
    // Jika NIS valid, simpan data dan navigasikan ke halaman lain
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Register',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            TextField(
              controller: _nisController,
              decoration: InputDecoration(
                labelText: 'NIS',
                prefixIcon: const Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.grey.shade300),
                ),
                filled: true,
                fillColor: Colors.grey.shade100,
              ),
              enabled: !_nisValid, // Disable jika NIS valid
            ),
            const SizedBox(height: 16),
            if (!_nisValid)
              PrimaryButton(
                text: 'Check NIS',
                onPressed: _checkNIS,
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
            if (_nisChecked && _nisValid) ...[
              const SizedBox(height: 16),
              const Text(
                'NIS ditemukan. Silakan masukkan password untuk mendaftar.',
                style: TextStyle(color: Colors.green, fontSize: 16),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: const Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.grey.shade300),
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                ),
                obscureText: true,
              ),
              const SizedBox(height: 32),
              PrimaryButton(
                text: 'Register',
                onPressed: _register,
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
            ] else if (_nisChecked && !_nisValid) ...[
              const SizedBox(height: 16),
              const Text(
                'NIS tidak ditemukan.',
                style: TextStyle(color: Colors.redAccent),
                textAlign: TextAlign.center,
              ),
            ],
            const SizedBox(height: 16),
            TextButton(
               onPressed: () { 
                navigateToLogin(context);
               },
              child: const Text(
                'Already have an account? Login here.',
                style: TextStyle(color: Colors.blueAccent),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
