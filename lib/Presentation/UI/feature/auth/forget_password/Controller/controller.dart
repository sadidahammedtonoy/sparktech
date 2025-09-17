import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sparktech/App/routes.dart';

class forget_password_controller extends GetxController{
  TextEditingController forget_email = TextEditingController();
  TextEditingController OTP_controller = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirm_password = TextEditingController();

  var isPasswordVisible = false.obs;
  var isConfiPassVisible = false.obs;

  void findAccount() => Get.toNamed(routes.Verify_screen);
  void verify_otp() => Get.toNamed(routes.set_password_screen);
  void set_new_password() => Get.toNamed(routes.login_page_screen);

}