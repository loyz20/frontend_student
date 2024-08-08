import 'package:flutter/material.dart';
import 'package:frontend_student/screens/login_screen.dart';
import 'package:frontend_student/screens/main_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  final prefs = await SharedPreferences.getInstance();
  final token = prefs.getString('auth_token');

  runApp(MyApp(startScreen: token != null ? const MainScreen() : const LoginScreen()));
}

class MyApp extends StatelessWidget {
  final Widget startScreen;

  const MyApp({super.key, required this.startScreen});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: startScreen,
    );
  }
}
