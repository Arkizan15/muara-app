import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Daftar", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          _buildField("Nama Lengkap", "Nama kamu"),
          _buildField("Email/No WA", "Email/No Wa kamu"),
          _buildField("Password", "Masukkan password", isPass: true),
          _buildField("Konfirmasi Password", "Masukkan konfirmasi password", isPass: true),
        ],
      ),
    );
  }

  Widget _buildField(String label, String hint, {bool isPass = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        TextField(obscureText: isPass, decoration: InputDecoration(hintText: hint, border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)))),
        const SizedBox(height: 15),
      ],
    );
  }
}