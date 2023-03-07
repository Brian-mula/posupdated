import 'package:flutter/material.dart';

class CustomeInput extends StatelessWidget {
  const CustomeInput(
      {super.key, required this.controller, required this.label});
  final TextEditingController controller;
  final String label;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          labelText: label,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.orange.shade700, width: 2))),
    );
  }
}
