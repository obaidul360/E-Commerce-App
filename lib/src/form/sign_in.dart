import 'dart:developer';

import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';

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
      body: SingleChildScrollView(
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
              TextField(decoration: InputDecoration(hintText: "Enter e-mail")),
              SizedBox(height: 8),
              TextField(decoration: InputDecoration(hintText: "Enter e-mail")),
              SizedBox(height: 10),
              CustomButton(
                onTap: () {},
                title: "SignUp",
                colo: Colors.white,
                FnSize: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
