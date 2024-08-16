import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  final TextEditingController usernameController;
  final TextEditingController passwordController;
  final VoidCallback onLoginPressed;
  final VoidCallback onForgotPasswordPressed;
  final VoidCallback onRegisterPressed;

  const LoginForm({
    super.key,
    required this.usernameController,
    required this.passwordController,
    required this.onLoginPressed,
    required this.onForgotPasswordPressed,
    required this.onRegisterPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
          controller: usernameController,
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
          controller: passwordController,
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
        ElevatedButton(
          onPressed: onLoginPressed,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 16),
            backgroundColor: Colors.blueAccent, // Adjust as needed
          ),
          child: const Text('Login'),
        ),
        const SizedBox(height: 16),
        TextButton(
          onPressed: onForgotPasswordPressed,
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
              onPressed: onRegisterPressed,
              child: const Text(
                'Register',
                style: TextStyle(color: Colors.blueAccent),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
