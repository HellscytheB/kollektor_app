import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Map<String, String>> _onboardingData = [
    {
      "image": "assets/images/onboarding1.png",
      "title": "Bienvenido a Kollektor",
      "description": "Gestiona tu cartera de manera eficiente y organizada.",
    },
    {
      "image": "assets/images/onboarding2.png",
      "title": "Controla tus pagos",
      "description":
          "Lleva un registro detallado de los pagos de tus clientes.",
    },
    {
      "image": "assets/images/onboarding3.png",
      "title": "Reportes claros",
      "description": "Obtén reportes visuales para tomar mejores decisiones.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF311D3F),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemCount: _onboardingData.length,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(_onboardingData[index]["image"]!, height: 250),
                    const SizedBox(height: 20),
                    Text(
                      _onboardingData[index]["title"]!,
                      style: const TextStyle(
                        fontFamily: 'Open Sans',
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      _onboardingData[index]["description"]!,
                      style: const TextStyle(
                        fontFamily: 'Open Sans',
                        fontSize: 16,
                        color: Colors.white70,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              _onboardingData.length,
              (index) => buildDot(index),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ElevatedButton(
              onPressed: () {
                if (_currentPage == _onboardingData.length - 1) {
                  Navigator.pushReplacementNamed(context, '/login');
                } else {
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.ease,
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFD01B59),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              child: Text(
                _currentPage == _onboardingData.length - 1
                    ? "Comenzar"
                    : "Siguiente",
                style: const TextStyle(
                  fontFamily: 'Open Sans',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget buildDot(int index) {
    return Container(
      height: 10,
      width: _currentPage == index ? 20 : 10,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: _currentPage == index ? const Color(0xFFD01B59) : Colors.white54,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
