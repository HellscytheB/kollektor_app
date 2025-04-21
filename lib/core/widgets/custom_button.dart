import 'package:flutter/material.dart';
import 'package:kollektor_app/core/constants/app_colors.dart';

class CustomButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({super.key, required this.text, required this.onPressed});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        width: 200,
        height: 50,
        decoration: BoxDecoration(
          color: _isHovered ? AppColors.textPrimary : AppColors.primary,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(
                51,
              ), // Reemplazo de withOpacity(0.2)
              offset: const Offset(0, 4),
              blurRadius: 8,
            ),
          ],
        ),
        child: TextButton(
          onPressed: widget.onPressed,
          style: TextButton.styleFrom(padding: EdgeInsets.zero),
          child: Text(
            widget.text,
            style: TextStyle(
              fontFamily: 'Open Sans',
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: _isHovered ? AppColors.primary : AppColors.textPrimary,
            ),
          ),
        ),
      ),
    );
  }
}
