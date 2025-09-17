import 'package:flutter/material.dart';
import 'package:sparktech/Presentation/UI/Shared/back_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../Controller/controller.dart';


class set_password extends StatelessWidget {
  set_password({super.key});
  final controller = Get.put(forget_password_controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: back_button(),
      ),
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Set Your New Password", style: TextStyle(fontSize: 30.sp),),
            Text("Create a secure password to protect your account and get started seamlessly!", style: TextStyle(fontSize: 14.sp),),
            SizedBox(height: 20.h,),
            Align(
                alignment: Alignment.topLeft,
                child: Text("Password", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),)),
            SizedBox(height: 50, child: Obx(() => TextFormField(obscureText: !controller.isPasswordVisible.value,
              controller: controller.password,
              decoration: InputDecoration(
                  hintText: "**********",
                  suffixIcon: IconButton(onPressed: () => controller.isPasswordVisible.value = !controller.isPasswordVisible.value, icon: Icon(!controller.isPasswordVisible.value ? Icons.visibility_off_outlined : Icons.visibility_outlined, color: Colors.grey,))
              ),
            ))),
            SizedBox(height: 10.h,),
            Align(
                alignment: Alignment.topLeft,
                child: Text(" Confirm password", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),)),
            SizedBox(height: 50, child: Obx(() => TextFormField(obscureText: !controller.isConfiPassVisible.value,
              controller: controller.confirm_password,
              decoration: InputDecoration(
                  hintText: "**********",
                  suffixIcon: IconButton(onPressed: () => controller.isConfiPassVisible.value = !controller.isConfiPassVisible.value, icon: Icon(!controller.isConfiPassVisible.value ? Icons.visibility_off_outlined : Icons.visibility_outlined, color: Colors.grey,))
              ),
            ))),
            SizedBox(height: 30.h,),
            ElevatedButton(onPressed: () => controller.set_new_password(), child: Text("Continue", style: TextStyle(color: Colors.white),))
          ],
        ),
      )),
    );
  }
}
