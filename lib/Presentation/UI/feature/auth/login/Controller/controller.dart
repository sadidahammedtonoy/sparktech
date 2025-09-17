import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sparktech/App/routes.dart';
import 'package:http/http.dart' as http;
import 'package:sparktech/Core/services/Shareprefenrance/shareprefarance.dart';

import '../../../../../../App/endpoints.dart';

class login_controller extends GetxController {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  var isRemember = false.obs;
  var isPasswordVisiable = false.obs;
  void sign_up() => Get.toNamed(routes.sign_up_screen);
  void forgetpassword() => Get.toNamed(routes.forget_password_screen);
  Future<void> login() async {
    final _body = {"email": email.text.trim(), "password": password.text};
    try {
      final response = await http.post(
        Uri.parse(urls.login),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(_body),
      );
      final _response = jsonDecode(response.body);
      if (response.statusCode == 200) {
        if (isRemember.value) {
          SharedPreferencesHelper.saveAccessToken(_response['data']['token']);
        }
        Get.offAllNamed(routes.navbar_screen);
      }
    } catch (e) {
      Get.snackbar("Task Manager", "Please try again");
    }
  }
}
