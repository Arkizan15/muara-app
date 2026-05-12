import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Masuk", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          const SizedBox(height: 30),
          const Text("Email/No WA", style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          TextField(decoration: InputDecoration(hintText: "Masukkan Email/WA", border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)))),
          const SizedBox(height: 20),
          const Text("Password", style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          TextField(obscureText: true, decoration: InputDecoration(hintText: "Masukkan password", border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)))),
          Align(alignment: Alignment.centerRight, child: TextButton(onPressed: () {}, child: const Text("Lupa Password?", style: TextStyle(color: Colors.red)))),
        ],
      ),
    );
  }
}