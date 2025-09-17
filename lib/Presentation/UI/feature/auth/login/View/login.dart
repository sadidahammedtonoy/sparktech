import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sparktech/App/appColors.dart';
import 'package:get/get.dart';

import '../Controller/controller.dart';
class login_page extends StatelessWidget {
  login_page({super.key});
  final controller = Get.put(login_controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome Back!", style: TextStyle(fontSize: 30.sp),),
            Text("Stay productive and take control of your tasks.", style: TextStyle(fontSize: 14.sp),),
            SizedBox(height: 20.h,),
            Text("Email Address", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),),
            SizedBox(height: 50, child: TextFormField(
              controller: controller.email,
            )),
            SizedBox(height: 10.h,),
            Text("Password", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),),
            SizedBox(height: 50, child: Obx(() => TextFormField(obscureText: !controller.isPasswordVisiable.value,
              controller: controller.password,
              decoration: InputDecoration(
                  suffixIcon: IconButton(onPressed: () => controller.isPasswordVisiable.value = !controller.isPasswordVisiable.value, icon: Icon(controller.isPasswordVisiable.value ? Icons.visibility_off_outlined : Icons.visibility_outlined, color: Colors.grey,))
              ),
            ))),
            Row(
              children: [
                Obx(() =>
                    Checkbox(value: controller.isRemember.value,
                        activeColor: appcolors.primary,
                        onChanged: (value){
                          controller.isRemember.value = !controller.isRemember.value;
                        }),
                ),
                Text("Remember me", style: TextStyle(fontSize: 14.sp),),
                Spacer(),
                TextButton(onPressed: () => controller.forgetpassword(), child: Text("Forget password", style: TextStyle(fontSize: 14.sp),),)

              ],
            ),
            Row(
              children: [
                Expanded(child: Divider()),
                Text("  OR  ", style: TextStyle(fontSize: 14.sp),),
                Expanded(child: Divider()),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don’t have an account?", style: TextStyle(fontSize: 14.sp),),
                TextButton(onPressed: () => controller.sign_up(), child: Text("Sign Up", style: TextStyle(fontSize: 14.sp, color: appcolors.primary),),)
              ],
            ),
            SizedBox(height: 10.h,),
            ElevatedButton(onPressed: () => controller.login(), child: Text("Log In", style: TextStyle(fontSize: 14.sp, color: Colors.white),),)
          ],
        ),
      )),
    );
  }
}
