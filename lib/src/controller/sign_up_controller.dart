import 'dart:convert';

import 'dart:developer';
import 'package:http/http.dart' as http;

class SignUpController {
  Future<bool> createSignUpAccountFun({required Map data}) async {
    try {
      Uri uri = Uri.parse("https://b4.coderangon.com/api/register");
      var header = {"accept": "application/json"};

      var res = await http.post(uri, body: data, headers: header);
      if (res.statusCode == 201) {
        log("Succes");
        return true;
      } else if (res.statusCode == 422) {
        log("Email or Phone Already taked");
        var e = jsonDecode(res.body);
        log("${e['message']}");
        return false;
      }
    } catch (e) {
      log("$e");
    }
    return false;
  }
}
