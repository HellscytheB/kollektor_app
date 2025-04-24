import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kollektor_app/core/constants/app_colors.dart';
import 'package:kollektor_app/core/constants/app_routes.dart';
import 'package:kollektor_app/core/theme/text_styles.dart';

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
          const Spacer(),

          // Logo principal
          Image.asset(
            'assets/images/logo_kollektor.png',
            height: 150.h, // Escala automáticamente
          ),
          SizedBox(height: 20.h),

          // Nombre de la app
          Text(
            'KOLLEKTOR',
            style: TextStyle(
              fontSize: 32.sp, // Escala automáticamente
              fontWeight: FontWeight.bold,
              color: AppColors.accent,
            ),
          ),
          SizedBox(height: 20.h),

          // Indicador de carga
          const CircularProgressIndicator(color: AppColors.accent),
          const Spacer(),

          // Logo de la empresa desarrolladora
          Padding(
            padding: EdgeInsets.only(bottom: 20.h), // Escala automáticamente
            child: Image.asset(
              'assets/images/logo_ankora.png',
              height: 50.h, // Escala automáticamente
            ),
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double? width;
  final double? height;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width ?? 350.w, // Escala automáticamente
        height: height ?? 50.h, // Escala automáticamente
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(8.r), // Escala automáticamente
          boxShadow: [
            BoxShadow(
              color: AppColors.shadow,
              offset: Offset(0, 4.h), // Escala automáticamente
              blurRadius: 8.r, // Escala automáticamente
            ),
          ],
        ),
        child: Center(
          child: Text(
            text,
            style: AppTextStyles.button.copyWith(
              fontSize: 16.sp,
            ), // Escala automáticamente
          ),
        ),
      ),
    );
  }
}
