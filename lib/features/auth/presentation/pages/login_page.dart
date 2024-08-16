import 'package:flutter/material.dart';
import 'package:frontend_student/common/constants/colors.dart';
import 'package:frontend_student/common/widget/navigation.dart';
import 'package:frontend_student/features/auth/presentation/widgets/login_form.dart';


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
