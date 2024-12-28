import 'package:flutter/material.dart';
// Required for delayed functions
import 'dart:async';
// Importing other screens
import 'screens/LoginScreen.dart';

void main() {
  runApp(MaterialApp(
    home: const SplashScreen(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: 'AgencyFB', // Global font family
    ),
  ));
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _opacity = 0.0; // Opacity for fade-in animation

  @override
  void initState() {
    super.initState();
    _fadeInLogo();
    _navigateToLogin();
  }

  void _fadeInLogo() {
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _opacity = 1.0;
      });
    });
  }

  void _navigateToLogin() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(217, 0, 0, 1), // Start color (red)
              Color.fromARGB(255, 114, 0, 0), // End color (lighter red)
            ],
            begin: Alignment.topCenter, // Gradient starts at the top
            end: Alignment.bottomCenter, // Gradient ends at the bottom
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedOpacity(
                opacity: _opacity,
                duration: const Duration(seconds: 1),
                child: Image.asset(
                  'assets/images/getfiticon.png',
                  height: 125,
                  width: 125,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'GET FIT',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
