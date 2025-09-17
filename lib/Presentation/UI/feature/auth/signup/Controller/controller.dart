import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sparktech/App/endpoints.dart';
import 'package:sparktech/App/routes.dart';
import 'package:http/http.dart' as http;

import '../View/otp_check.dart';
class sign_up_controller extends GetxController {
  var isAgree = false.obs;
  var isPasswordVisible = false.obs;
  var isConfiPassVisible = false.obs;
  TextEditingController fname = TextEditingController();
  TextEditingController Lname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirm_password = TextEditingController();

  TextEditingController OTP_controller = TextEditingController();

  void login() => Get.toNamed(routes.login_page_screen);
  Future<void> sign_up() async {
    try {
      var request = http.MultipartRequest(
        "POST",
        Uri.parse(urls.register),
      );
      request.fields['firstName'] = fname.text.trim();
      request.fields['lastName'] = Lname.text.trim();
      request.fields['email'] = email.text.trim();
      request.fields['password'] = password.text.trim();
      request.fields['address'] = address.text.trim();

      request.files.add(
        http.MultipartFile.fromBytes(
          'file',
          [],
          filename: '',
        ),
      );

      var response = await request.send();
      var responseBody = await response.stream.bytesToString();

      if (response.statusCode == 200) {
        Get.to(otp_check());
      } else {
        Get.snackbar("Task Manager", "Signup failed: $responseBody");
      }
    } catch (e) {
      Get.snackbar("Task Manager", "Please try again: $e");
    }
  }
  
  Future<void> verify_otp() async {
    final _body = {
      "email": email.text.trim(),
      "code": OTP_controller.text
    };
    try{
      final response = await http.post(
        Uri.parse(urls.verify),
        headers: {"Content-Type": "application/json",
        },
        body: jsonEncode(_body)
      );
      if(response.statusCode == 200){
        Get.offAllNamed(routes.login_page_screen);
      }
    }catch(e){
      Get.snackbar("Task Manager", "Please try again");
    }

  }
}