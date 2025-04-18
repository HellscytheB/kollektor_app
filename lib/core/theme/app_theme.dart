import 'package:flutter/material.dart';
import 'package:kollektor_app/core/constants/app_colors.dart';
import 'package:kollektor_app/core/theme/text_styles.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primary,
    secondaryHeaderColor: AppColors.secondary,
    scaffoldBackgroundColor: AppColors.background,
    colorScheme: ColorScheme.light(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      surface: AppColors.background, // Cambiado de background a surface
      onPrimary: AppColors.accent,
      onSecondary: AppColors.accent,
      onSurface: AppColors.textPrimary,
    ),
    textTheme: const TextTheme(
      displayLarge: AppTextStyles.displayLarge,
      displayMedium: AppTextStyles.displayMedium,
      bodyLarge: AppTextStyles.bodyLarge,
      bodyMedium: AppTextStyles.bodyMedium,
      labelLarge: AppTextStyles.button, // Para botones
    ),
  );
}
