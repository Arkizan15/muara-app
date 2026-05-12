import 'package:flutter/material.dart';
import 'pages/welcome_screen.dart';

void main() {
  runApp(const MuaraApp());
}

class MuaraApp extends StatelessWidget {
  const MuaraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Muara App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: const Color(0xFF5465FF),
      ),
      home: const WelcomeScreen(),
    );
  }
}