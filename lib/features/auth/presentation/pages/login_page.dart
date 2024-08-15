import 'package:flutter/material.dart';
import 'package:frontend_student/common/constants/colors.dart';
import 'package:frontend_student/common/widget/navigation.dart';
import 'package:frontend_student/common/widget/primary_button.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  LoginPage({super.key});

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
              'Welcome Back!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
                prefixIcon: const Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.grey.shade300),
                ),
                filled: true,
                fillColor: Colors.grey.shade100,
              ),
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
              text: 'Login',
              onPressed: () {
                // Implement login logic here
                navigateToTab(context);
              },
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {
                // Implement forgot password navigation here
              },
              child: const Text(
                'Forgot Password?',
                style: TextStyle(color: Colors.blueAccent),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Don’t have an account?'),
                TextButton(
                  onPressed: () {
                    // Implement register navigation here
                    navigateToRegister(context);
                  },
                  child: const Text(
                    'Register',
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
