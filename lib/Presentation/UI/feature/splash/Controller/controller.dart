import 'dart:async';

import 'package:get/get.dart';
import 'package:sparktech/App/routes.dart';

class splash_controller extends GetxController{
  @override
  void onInit() {
    super.onInit();
    Timer(const Duration(seconds: 2), () {
      Get.offAllNamed(routes.onBording_screen); // go to next screen
    });
  }
}