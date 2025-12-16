import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class SignInController {
  Future<void> createAccountFun() async {
    try {
      Uri uri = Uri.parse("https://b4.coderangon.com/api/register");
      var body = {
        "name": "gdcvb",
        "phone": "01751091110",
        "email": "c@gmail.com",
        "address": "gsnn",
        "password": "hdfghhuu",
      };
      var res = await http.post(uri, body: body);
      if(res.statusCode==200){
        log("Succes");
      }
      else if (res.statusCode==422) {
        log("Email or Phone Already taked");
        
      }  
    } catch (e) {
      log("$e");
    }
  }
}
