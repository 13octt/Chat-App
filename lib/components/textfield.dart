import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String hint;

  const CustomTextField({super.key, required this.label, required this.hint});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white.withOpacity(.5),
            border: const UnderlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0))),
            labelText: label,
            hintText: hint,
            hintStyle: const TextStyle(color: Colors.white),
            labelStyle: const TextStyle(color: Colors.white)),
      ),
    );
  }
}
