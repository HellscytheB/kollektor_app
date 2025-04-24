import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:kollektor_app/core/constants/app_routes.dart';
import 'package:kollektor_app/features/auth/presentation/screens/login_screen.dart';
import 'package:kollektor_app/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:kollektor_app/features/splash/presentation/screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    ScreenUtilInit(
      designSize: const Size(360, 690), // Tamaño base del diseño
      builder: (context, child) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kollektor App',
      theme: ThemeData(fontFamily: 'Open Sans'),
      initialRoute: AppRoutes.splash,
      routes: {
        AppRoutes.splash: (context) => const SplashScreen(),
        AppRoutes.onboarding: (context) => const OnboardingScreen(),
        AppRoutes.login: (context) => const LoginScreen(),
      },
    );
  }
}
