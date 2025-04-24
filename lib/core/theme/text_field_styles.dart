import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kollektor_app/core/constants/app_colors.dart';

class TextFieldStyles {
  static InputDecoration defaultDecoration({required String hintText}) {
    return InputDecoration(
      filled: true,
      fillColor: AppColors.secondary, // Fondo del TextField
      hintText: hintText,
      hintStyle: TextStyle(
        fontSize: 14.sp, // Escala automáticamente
        color: AppColors.textPrimary.withOpacity(
          0.6,
        ), // Color del hint con opacidad
      ),
      contentPadding: EdgeInsets.symmetric(
        vertical: 12.h, // Padding vertical
        horizontal: 16.w, // Padding horizontal
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r), // Bordes redondeados
        borderSide: BorderSide.none, // Sin borde
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide(
          color: AppColors.primary.withOpacity(0.5), // Borde habilitado
          width: 1.5,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide(
          color: AppColors.primary, // Borde al enfocar
          width: 2.0,
        ),
      ),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static InputDecoration searchDecoration({required String hintText}) {
    return InputDecoration(
      filled: true,
      fillColor: AppColors.background,
      hintText: hintText,
      hintStyle: TextStyle(
        fontSize: 14.sp,
        color: AppColors.textPrimary.withOpacity(0.6),
      ),
      prefixIcon: Icon(
        Icons.search,
        color: AppColors.textPrimary.withOpacity(0.8),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: BorderSide.none,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: TextFieldStyles.defaultDecoration(
                hintText: 'Correo electrónico',
              ),
            ),
            SizedBox(height: 20.h),
            TextField(
              decoration: TextFieldStyles.defaultDecoration(
                hintText: 'Contraseña',
              ),
              obscureText: true, // Ocultar texto para contraseñas
            ),
          ],
        ),
      ),
    );
  }
}
