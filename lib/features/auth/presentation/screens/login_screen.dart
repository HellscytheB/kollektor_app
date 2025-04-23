import 'package:flutter/material.dart';
import 'dart:developer'; // Para usar log
import 'package:kollektor_app/core/widgets/custom_button.dart';
import 'package:kollektor_app/core/constants/app_colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background, // Fondo desde AppColors
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo_kollektor.png', height: 120),
              const SizedBox(height: 20),
              const Text(
                'KOLLEKTOR',
                style: TextStyle(
                  fontFamily: 'Open Sans',
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 40),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.secondary, // Color secundario
                  hintText: 'N Identificación',
                  hintStyle: const TextStyle(
                    fontFamily: 'Open Sans',
                    color: Colors.white,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
                style: const TextStyle(
                  fontFamily: 'Open Sans',
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              CustomButton(
                text: 'Entrar',
                onPressed: () {
                  log('Botón Entrar presionado');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
