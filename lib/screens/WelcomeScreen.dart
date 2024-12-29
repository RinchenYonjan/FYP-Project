import 'package:flutter/material.dart';
import 'package:getfit/screens/LoginScreen.dart';
// Importing other screens
import 'Signup.dart';
import 'BoardingScreen.dart';

void main() {
  runApp(MaterialApp(
    home: const WelcomeScreen(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: 'AgencyFB', // Global font family
    ),
  ));
}

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  _WelcomeScreenState createState() {
    return (_WelcomeScreenState());
  }
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isChecked = false; // State for the checkbox

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Heading 1
              const Text(
                'GET FIT',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(228, 0, 0, 1),
                ),
                textAlign: TextAlign.center,
              ),
              // Heading 2
              const Text(
                "Let's Workout Together",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Color.fromRGBO(228, 0, 0, 1),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 108),
              //  Login Button
              ElevatedButton(
                onPressed: () {
                  // final email = emailController.text;
                  // final password = passwordController.text;

                  // // Perform login logic here
                  // ScaffoldMessenger.of(context).showSnackBar(
                  //   SnackBar(content: Text('Logging in with $email')),
                  // );
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(26.0),
                  ),
                ),
                child: Text(
                  'Log In',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(height: 18),
              //  Signup Button
              ElevatedButton(
                onPressed: () {
                  // final email = emailController.text;
                  // final password = passwordController.text;

                  // // Perform Sign up logic here
                  // ScaffoldMessenger.of(context).showSnackBar(
                  //   SnackBar(content: Text('Logging in with $email')),
                  // );
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignupScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(217, 217, 217, 1),
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(26.0),
                  ),
                ),
                child: Text(
                  'Create an account',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
