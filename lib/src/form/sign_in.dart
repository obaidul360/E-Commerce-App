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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Form(
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
                CustomTextField(hintText: 'Enter e-mail'),
                SizedBox(height: 8),
                CustomTextField(hintText: ' Enter Password'),
                SizedBox(height: 10),
                CustomButton(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
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
