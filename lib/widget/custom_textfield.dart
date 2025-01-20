import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.label,
    this.icon,
    required this.controller,
  });

  final String label;
  final Icon? icon;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        hintText: label,
        hintStyle: const TextStyle(color: Colors.grey),
        prefixIcon: icon,
      ),
    );
  }
}
