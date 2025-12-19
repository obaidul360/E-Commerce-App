import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';

import '../controller/controller.dart';
import '../home/home_screen.dart';
import '../widgets/custom_button.dart';
import '../widgets/custon_text_field.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
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
                  Controller: nameController,
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
                  Controller: phoneController,
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
                  Controller: emailController,
                  keyType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value == "") {
                      return "Email required";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 8),
                CustomTextField(
                  hintText: "adress",
                  Controller: addressController,
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
                  Controller: passController,
                  keyType: TextInputType.visiblePassword,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Password required";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                isLoading == true
                    ? CircularProgressIndicator()
                    : CustomButton(
                        onTap: () async {
                          if (_formKey.currentState?.validate() ?? false) {}
                          var info = {
                            "name": nameController.text,
                            "phone": phoneController.text,
                            "email": emailController.text,
                            "address": addressController.text,
                            "password": passController.text,
                          };
                          isLoading == true;
                          setState(() {});
                          bool status = await SignInController()
                              .createAccountFun(data: info);
                          isLoading == false;
                          setState(() {});
                          if (status == true) {
                            // Got to Next Screen
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
