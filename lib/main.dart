import 'package:flutter/material.dart';
import 'package:kollektor_app/features/auth/presentation/screens/login_screen.dart';
import 'package:kollektor_app/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:kollektor_app/features/splash/presentation/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class AppRoutes {
  static const String splash = '/splash';
  static const String onboarding = '/onboarding';
  static const String login = '/login';
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
