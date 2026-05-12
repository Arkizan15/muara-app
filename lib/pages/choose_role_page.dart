import 'package:flutter/material.dart';

class ChooseRolePage extends StatelessWidget {
  const ChooseRolePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const Text("Hai Andi Lukito!", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              const Text("Baru Daftar Yaa? Kamu Sebagai Apa?", style: TextStyle(color: Colors.grey)),
              const SizedBox(height: 30),
              _card("Pelaku Usaha", 'assets/images/karya.png'), // Sesuaikan dengan image yang ada
              const SizedBox(height: 20),
              _card("Investor", 'assets/images/online-friends-cuate.png'),
              const Spacer(),
              const Text("MUARA akan membantu mempertemukan pelaku usaha, pelanggan, dan juga investor!", textAlign: TextAlign.center, style: TextStyle(fontSize: 12, color: Colors.grey)),
              const SizedBox(height: 20),
              _btn("Pilih Sekarang", () {}),
            ],
          ),
        ),
      ),
    );
  }

  Widget _card(String t, String img) => Container(
    height: 170, width: double.infinity,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10)]),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Column(children: [
        Expanded(flex: 3, child: Container(color: const Color(0xFFFFC633), child: Image.asset(img, fit: BoxFit.contain))),
        Expanded(flex: 1, child: Container(color: const Color(0xFF2B8BFF), alignment: Alignment.center, child: Text(t, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)))),
      ]),
    ),
  );

  Widget _btn(String t, VoidCallback o) => SizedBox(width: double.infinity, height: 50, child: ElevatedButton(
    onPressed: o, style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF5465FF), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    child: Text(t, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
  ));
}