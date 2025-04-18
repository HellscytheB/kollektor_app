import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/onboarding');
    });

    return Scaffold(
      backgroundColor: const Color(0xFF311D3F), // Fondo morado oscuro
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo_kollektor.png', // Logo de tu app
              height: 120,
            ),
            const SizedBox(height: 20),
            const CircularProgressIndicator(color: Colors.white),
          ],
        ),
      ),
    );
  }
}
