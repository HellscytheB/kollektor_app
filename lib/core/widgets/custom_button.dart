import 'package:flutter/material.dart';
import 'package:kollektor_app/core/constants/app_colors.dart';
import 'package:kollektor_app/core/theme/text_styles.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double width;
  final double height;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.width = 350, // Ancho predeterminado
    this.height = 50, // Alto predeterminado
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: AppColors.primary, // Color primario
          borderRadius: BorderRadius.circular(8), // Bordes redondeados
          boxShadow: [
            BoxShadow(
              color:
                  AppColors.shadow, // Usar el color de sombra desde AppColors
              offset: const Offset(0, 4),
              blurRadius: 8,
            ),
          ],
        ),
        child: Center(
          child: Text(
            text,
            style: AppTextStyles.button, // Estilo de texto para botones
          ),
        ),
      ),
    );
  }
}
