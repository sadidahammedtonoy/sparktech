import 'dart:async';

import 'package:get/get.dart';
import 'package:sparktech/App/routes.dart';
import 'package:sparktech/Core/services/Shareprefenrance/shareprefarance.dart';

class splash_controller extends GetxController{
  @override
  void onInit()  {
    super.onInit();
    Timer(const Duration(seconds: 2), () async {
      bool isLogin = await SharedPreferencesHelper.checkLogin() ?? false;
      if(isLogin){
        Get.offAllNamed(routes.navbar_screen);
      }else{
        Get.offAllNamed(routes.onBording_screen);
      }
    });
  }
}