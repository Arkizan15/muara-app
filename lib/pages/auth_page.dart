import 'package:flutter/material.dart';
import 'choose_role_page.dart';

class AuthPage extends StatefulWidget {
  final bool isLogin;
  const AuthPage({super.key, this.isLogin = true});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  late bool isLogin;

  @override
  void initState() {
    super.initState();
    isLogin = widget.isLogin;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(
            children: [
              Image.asset('assets/images/muara-logo-transparent.png', height: 100),
              const SizedBox(height: 30),
              Row(
                children: [
                  _buildTab("Masuk", isLogin, () => setState(() => isLogin = true)),
                  _buildTab("Daftar", !isLogin, () => setState(() => isLogin = false)),
                ],
              ),
              const SizedBox(height: 30),
              isLogin ? _buildLoginForm() : _buildRegisterForm(),
              const SizedBox(height: 25),
              const Row(children: [Expanded(child: Divider()), Padding(padding: EdgeInsets.symmetric(horizontal: 10), child: Text("Atau Masuk Dengan", style: TextStyle(fontSize: 12))), Expanded(child: Divider())]),
              const SizedBox(height: 20),
              Row(children: [
                Expanded(child: _buildSocialBtn("Google", Icons.g_mobiledata)), // Ganti dengan Image.asset jika ada
                const SizedBox(width: 15),
                Expanded(child: _buildSocialBtn("Apple", Icons.apple)),
              ]),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTab(String t, bool a, VoidCallback o) => Expanded(
    child: GestureDetector(
      onTap: o,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(color: a ? const Color(0xFF5465FF) : Colors.transparent, borderRadius: BorderRadius.circular(8)),
        child: Center(child: Text(t, style: TextStyle(color: a ? Colors.white : Colors.grey, fontWeight: FontWeight.bold))),
      ),
    ),
  );

  Widget _buildLoginForm() => Column(children: [
    _input("Email/No Wa", "Email/No Wa kamu"),
    const SizedBox(height: 15),
    _input("Password", "Masukkan password", p: true),
    const SizedBox(height: 20),
    _btn("Masuk"),
  ]);

  Widget _buildRegisterForm() => Column(children: [
    _input("Nama Lengkap", "Nama kamu"),
    const SizedBox(height: 15),
    _input("Email/No Wa", "Email/No Wa kamu"),
    const SizedBox(height: 15),
    _input("Password", "Masukkan password", p: true),
    const SizedBox(height: 20),
    _btn("Daftar Sekarang"),
  ]);

  Widget _input(String l, String h, {bool p = false}) => Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    Text(l, style: const TextStyle(fontWeight: FontWeight.bold)),
    const SizedBox(height: 8),
    TextField(obscureText: p, decoration: InputDecoration(hintText: h, border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)))),
  ]);

  Widget _btn(String t) => SizedBox(width: double.infinity, height: 50, child: ElevatedButton(
    onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const ChooseRolePage())),
    style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF5465FF), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
    child: Text(t, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
  ));

  Widget _buildSocialBtn(String l, IconData i) => OutlinedButton.icon(
    onPressed: () {}, icon: Icon(i, color: Colors.black), label: Text(l, style: const TextStyle(color: Colors.black)),
    style: OutlinedButton.styleFrom(padding: const EdgeInsets.symmetric(vertical: 12), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
  );
}