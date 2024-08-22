import 'package:flutter/material.dart';
import 'package:frontend_student/src/constants/app_constants.dart';
import 'package:frontend_student/src/utils/navigation.dart';
import 'package:frontend_student/src/widgets/login_form.dart';


class LoginScreen extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: LoginForm(
          usernameController: _usernameController,
          passwordController: _passwordController,
          onLoginPressed: () {
            // Implement login logic here
            navigateToTab(context);
          },
          onForgotPasswordPressed: () {
            // Implement forgot password navigation here
          },
          onRegisterPressed: () {
            // Implement register navigation here
            navigateToRegister(context);
          },
        ),
      ),
    );
  }
}
