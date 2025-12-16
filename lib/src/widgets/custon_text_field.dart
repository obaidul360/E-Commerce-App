import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.hintText,
    required this.nameController,
    required this.validator,
    required this.keyType,
  });
  final String hintText;

  final TextEditingController nameController;
  final FormFieldValidator validator;
  final keyType;
  final _FormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _FormKey,
      child: TextFormField(
        keyboardType: keyType,
        controller: nameController,
        validator: validator,
        decoration: InputDecoration(
          hintText: "Enter $hintText",

          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        ),
      ),
    );
  }
}
