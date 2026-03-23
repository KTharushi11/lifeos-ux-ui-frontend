import 'package:flutter/material.dart';
import 'package:lifeos_app/core/widgets/custom_button.dart';
import 'package:lifeos_app/core/widgets/custom_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool isLoading = false;

  void handleLogin() {
    setState(() {
      isLoading = true;
    });

    // Simulate login delay
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        isLoading = false;
      });
      // Handle successful login logic here
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome Back',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 32),
            CustomTextfield(
              hint: 'Email',
              controller: TextEditingController(),
            ),
            const SizedBox(height: 16),
            CustomTextfield(
              hint: 'Password',
              controller: TextEditingController(),
              isPassword: true,
            ),
            const SizedBox(height: 32),
            CustomButton(
              text: 'Login',
              onPressed: () {
                // Handle login logic
              },
            ),
          ],
        ),
      ),
    );
  }
}