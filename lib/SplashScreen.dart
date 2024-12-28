import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: const SplashScreen(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: 'AgencyFB', // Global font family
    ),
  ));
}

//Creating GetStartedScreen class that extends(inheritance) statelesswidget property
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 0, 0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/getfiticon.png',
              height: 125,
              width: 125,
            ),
            const Text(
              'GET FIT',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
