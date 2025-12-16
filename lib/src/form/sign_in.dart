import 'dart:developer';

import 'package:flutter/material.dart';

import '../home/home_screen.dart';
import '../widgets/custom_button.dart';
import '../widgets/custon_text_field.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _FormKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController adressController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Form(
            key: _FormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome Back!",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Please enter your details",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w100,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 8),
                CustomTextField(
                  hintText: 'name',
                  nameController: nameController,
                  keyType: TextInputType.name,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Name required";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 8),
                CustomTextField(
                  hintText: 'phone',
                  nameController: phoneController,
                  keyType: TextInputType.phone,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Phone required";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 8),
                CustomTextField(
                  hintText: "email",
                  nameController: emailController,
                  keyType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Email required";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 8),
                CustomTextField(
                  hintText: "adress",
                  nameController: adressController,
                  keyType: TextInputType.streetAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Adress required";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 8),
                CustomTextField(
                  hintText: "password",
                  nameController: passController,
                  keyType: TextInputType.visiblePassword,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Password required";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                CustomButton(
                  onTap: () {
                    if (!_FormKey.currentState!.validate()) {
                      print("Form Valid ✅");
                    }
                  },
                  title: 'Sign In',
                  colo: Colors.white,
                  FnSize: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
