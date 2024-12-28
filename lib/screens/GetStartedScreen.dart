import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: const GetStartedScreen(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: 'AgencyFB', // Global font family
    ),
  ));
}

//Creating GetStartedScreen class that extends(inheritance) statelesswidget property
class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
