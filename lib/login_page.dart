import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:uas_mobile_programming/home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with TickerProviderStateMixin {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  late AnimationController _iconController;
  bool _isLoading = false;
  String? _errorMessage;

  final String _validEmail = "eve.holt@reqres.in";
  final String _validPassword = "alang";

  @override
  void initState() {
    super.initState();
    _iconController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..forward();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _iconController.dispose();
    super.dispose();
  }

  Future<void> login(String email, String password) async {
    if (email != _validEmail || password != _validPassword) {
      setState(() {
        _errorMessage = 'Email atau Password salah!';
      });
      return;
    }

    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    final url = Uri.parse('https://reqres.in/api/login');
    try {
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: json.encode({'email': email, 'password': password}),
      );

      // Cetak respons API untuk debugging
      print('Respons API: ${response.body}');

      if (response.statusCode == 200) {
        final data = json.decode(response.body);

        // Pastikan ada token dalam respons
        if (data.containsKey('token')) {
          final token = data['token'];
          print('Token: $token'); // Cetak token yang diterima

          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => Utama()),
          );
        } else {
          setState(() {
            _errorMessage = 'Login gagal: Token tidak ditemukan.';
          });
        }
      } else {
        setState(() {
          _errorMessage = 'Terjadi kesalahan saat login.';
        });
      }
    } catch (e) {
      setState(() {
        _errorMessage = 'Terjadi kesalahan. Silakan coba lagi.';
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 111, 151, 220),
              Colors.lightBlue,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AnimatedScale(
                        scale: _iconController.velocity,
                        duration: const Duration(seconds: 1),
                        child: const Icon(
                          Icons.login,
                          size: 100,
                          color: Colors.lightBlue,
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        controller: _emailController,
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.email),
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        controller: _passwordController,
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.lock),
                        ),
                        obscureText: true,
                      ),
                      const SizedBox(height: 20),
                      if (_isLoading)
                        const CircularProgressIndicator()
                      else
                        ElevatedButton(
                          onPressed: () {
                            final email = _emailController.text.trim();
                            final password = _passwordController.text.trim();
                            if (email.isNotEmpty && password.isNotEmpty) {
                              login(email, password);
                            } else {
                              setState(() {
                                _errorMessage =
                                    'Mohon isi Email dan Password Anda!';
                              });
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.lightBlue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 12.0),
                          ),
                          child: const Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      if (_errorMessage != null) ...[
                        const SizedBox(height: 20),
                        Text(
                          _errorMessage!,
                          style: const TextStyle(color: Colors.red),
                        ),
                      ],
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Lupa Password?',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          const Text('|', style: TextStyle(color: Colors.grey)),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Belum punya akun?',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
