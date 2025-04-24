import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kollektor_app/core/theme/text_field_styles.dart';
import 'package:kollektor_app/core/widgets/custom_button.dart';

class PasswordScreen extends StatelessWidget {
  const PasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double commonWidth = 350.w;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Título
              Text(
                'Introduce tu contraseña',
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20.h),

              // TextField para la contraseña
              SizedBox(
                width: commonWidth,
                child: TextField(
                  decoration: TextFieldStyles.defaultDecoration(
                    hintText: 'Contraseña',
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(height: 20.h),

              // Botón para continuar
              CustomButton(
                text: 'Continuar',
                onPressed: () {
                  print('Contraseña ingresada');
                },
                width: commonWidth,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
