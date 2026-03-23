import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final String? hint;
  final TextEditingController? controller;
  final bool isPassword;

  const CustomTextfield({
    super.key,
    this.hint,
    required this.controller,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hint,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}