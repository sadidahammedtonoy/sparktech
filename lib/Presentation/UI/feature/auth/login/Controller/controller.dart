import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sparktech/App/routes.dart';

class login_controller extends GetxController{
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  var isRemember = false.obs;
  var isPasswordVisiable = false.obs;
  void login(){}
  void sign_up() => Get.toNamed(routes.sign_up_screen);
}