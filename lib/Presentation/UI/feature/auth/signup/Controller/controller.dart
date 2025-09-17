import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sparktech/App/routes.dart';

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

  void login() => Get.toNamed(routes.login_page_screen);
  void sign_up(){}
}