import 'package:flutter/material.dart';

class WelcomeContent extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;

  const WelcomeContent({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 20),
        child: Column(
          children: [
            Image.asset(
              imagePath,
              height: MediaQuery.of(context).size.height * 0.35,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) => 
                const Icon(Icons.image_not_supported, size: 100, color: Colors.grey),
            ),
            const SizedBox(height: 40),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF1E293B)),
            ),
            const SizedBox(height: 16),
            Text(
              description,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16, color: Colors.grey, height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}

class Welcome1 extends StatelessWidget {
  const Welcome1({super.key});
  @override
  Widget build(BuildContext context) => const WelcomeContent(
    imagePath: 'assets/images/welcome1.jpg',
    title: 'Temukan Pelangganmu!',
    description: 'Perluas jaringan serta koneksi bisnismu dan temukan pelanggan yang benar-benar membutuhkan produkmu.',
  );
}

class Welcome2 extends StatelessWidget {
  const Welcome2({super.key});
  @override
  Widget build(BuildContext context) => const WelcomeContent(
    imagePath: 'assets/images/koneksi.jpg',
    title: 'Temukan Rekan Bisnismu!',
    description: 'Bangun kolaborasi bersama mitra terpercaya dari berbagai bidang UMKM untuk tumbuh bersama.',
  );
}

class Welcome3 extends StatelessWidget {
  const Welcome3({super.key});
  @override
  Widget build(BuildContext context) => const WelcomeContent(
    imagePath: 'assets/images/presenting.jpg',
    title: 'Lebih Dekat Dengan Pelanggan!',
    description: 'Jalin komunikasi langsung dengan pelanggan dan bangun hubungan yang lebih loyal dan bermakna.',
  );
}