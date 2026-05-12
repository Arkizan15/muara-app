import 'package:flutter/material.dart';
import 'welcome.dart';
import 'auth_page.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Widget> _pages = [const Welcome1(), const Welcome2(), const Welcome3()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (i) => setState(() => _currentPage = i),
                children: _pages,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 30),
              child: Column(
                children: [
                  // Dots Indicator
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(3, (index) => AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      height: 8, width: _currentPage == index ? 24 : 8,
                      decoration: BoxDecoration(
                        color: _currentPage == index ? const Color(0xFF5465FF) : Colors.grey.shade300, 
                        borderRadius: BorderRadius.circular(4)
                      ),
                    )),
                  ),
                  const SizedBox(height: 30),
                  _buildButton("Daftar Sekarang", const Color(0xFF5465FF), Colors.white, () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AuthPage(isLogin: false)));
                  }),
                  const SizedBox(height: 12),
                  _buildButton("Masuk", Colors.white, const Color(0xFF5465FF), () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AuthPage(isLogin: true)));
                  }, isOutlined: true),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(String t, Color c, Color tc, VoidCallback o, {bool isOutlined = false}) {
    return SizedBox(
      width: double.infinity, height: 50,
      child: ElevatedButton(
        onPressed: o,
        style: ElevatedButton.styleFrom(
          backgroundColor: c, elevation: 0,
          side: isOutlined ? const BorderSide(color: Color(0xFF5465FF), width: 1.5) : null,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        child: Text(t, style: TextStyle(color: tc, fontWeight: FontWeight.bold, fontSize: 16)),
      ),
    );
  }
}