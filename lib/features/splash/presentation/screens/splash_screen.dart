import 'package:flutter/material.dart';
import 'package:kollektor_app/core/constants/app_colors.dart';
import 'package:kollektor_app/core/constants/app_routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      if (!mounted) return;
      Navigator.pushReplacementNamed(context, AppRoutes.onboarding);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          const Spacer(), // Empuja el contenido hacia abajo
          // Logo principal
          Image.asset('assets/images/logo_kollektor.png', height: 150),
          const SizedBox(height: 20),

          // Nombre de la app
          const Text(
            'KOLLEKTOR',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: AppColors.accent,
            ),
          ),
          const SizedBox(height: 20),

          // Indicador de carga
          const CircularProgressIndicator(color: AppColors.accent),
          const Spacer(), // Empuja el logo de la empresa hacia abajo
          // Logo de la empresa desarrolladora
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Image.asset('assets/images/logo_ankora.png', height: 50),
          ),
        ],
      ),
    );
  }
}
