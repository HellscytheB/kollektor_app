import 'package:flutter/material.dart';
import 'dart:developer'; // Importar dart:developer para usar log

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF311D3F),
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
                  fillColor: const Color(0xFF623B7A),
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
              ElevatedButton(
                onPressed: () {
                  log('Botón Entrar presionado'); // Reemplazo de print
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFD01B59),
                  fixedSize: const Size(200, 50), // Tamaño fijo del botón
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Entrar',
                  style: TextStyle(
                    fontFamily: 'Open Sans',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
