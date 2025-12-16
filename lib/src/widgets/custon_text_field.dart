import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.hintText,
    required this.Controller,
    required this.validator,
    required this.keyType,
  });
  final String hintText;

  final TextEditingController Controller;
  final FormFieldValidator validator;
  final keyType;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyType,
      controller: Controller,
      validator: validator,
      decoration: InputDecoration(
        hintText: "Enter $hintText",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
