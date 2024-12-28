import 'package:flutter/material.dart';
// Importing other screens
import 'RegisterScreen.dart';
import 'BoardingScreen.dart';

void main() {
  runApp(MaterialApp(
    home: const LoginScreen(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: 'AgencyFB', // Global font family
    ),
  ));
}

// creating loginscreen statelesswidget
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
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
              // Email Field
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'useremail@gmail.com',
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/images/gmail.png',
                      width: 24,
                      height: 24,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 30),
              // Password Field
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.password),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                obscureText: true,
              ),
              // Forgot Password Textbutton
              const SizedBox(height: 30),
              const Text(
                "Forgot Password?",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
                textAlign: TextAlign.right,
              ),
              const SizedBox(height: 35),
              //  Login Button
              ElevatedButton(
                onPressed: () {
                  final email = emailController.text;
                  final password = passwordController.text;

                  // Perform login logic here
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Logging in with $email')),
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
                child: const Text(
                  'Log In',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(height: 25),
              TextButton(
                onPressed: () {
                  // Navigate to Register Screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RegisterScreen()),
                  );
                },
                child: const Text(
                  "Don't have an account yet? Create new",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
