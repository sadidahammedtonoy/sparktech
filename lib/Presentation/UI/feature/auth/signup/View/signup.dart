import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../../App/appColors.dart';
import '../Controller/controller.dart';
class sign_up extends StatelessWidget {
  sign_up({super.key});
  final controller = Get.put(sign_up_controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                  alignment: Alignment.center,
                  child: Text("Create Your Account", textAlign: TextAlign.center, style: TextStyle(fontSize: 30.sp),)),
              Text("Join Task Manager today — organize better, work smarter, and stay in control of your day.", textAlign: TextAlign.center, style: TextStyle(fontSize: 14.sp),),
              Text("First Name", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),),
              SizedBox(height: 50, child: TextFormField(
                  controller: controller.fname,
                decoration: InputDecoration(
                  hintText: "e.g. Kristin"
                ),
              )),
              SizedBox(height: 10.h,),
              Text("Last Name", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),),
              SizedBox(height: 50, child: TextFormField(
                  controller: controller.Lname,
                decoration: InputDecoration(
                    hintText: "e.g. Kristin"
                ),
              )),
              SizedBox(height: 10.h,),
              Text("Email Address", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),),
              SizedBox(height: 50, child: TextFormField(
                  controller: controller.email,
                decoration: InputDecoration(
                    hintText: "e.g. kristin.cooper@example.com"
                ),
              )),
              SizedBox(height: 10.h,),
              Text("Address", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),),
              SizedBox(height: 50, child: TextFormField(
                controller: controller.address,
                decoration: InputDecoration(
                    hintText: "e.g. 1234 Elm Street, Springfield, IL"
                ),
              )),
              SizedBox(height: 10.h,),
              Text("Password", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),),
              SizedBox(height: 50, child: Obx(() => TextFormField(obscureText: !controller.isPasswordVisible.value,
                controller: controller.password,
                decoration: InputDecoration(
                  hintText: "**********",
                    suffixIcon: IconButton(onPressed: () => controller.isPasswordVisible.value = !controller.isPasswordVisible.value, icon: Icon(!controller.isPasswordVisible.value ? Icons.visibility_off_outlined : Icons.visibility_outlined, color: Colors.grey,))
                ),
              ))),
              SizedBox(height: 10.h,),
              Text(" Confirm password", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),),
              SizedBox(height: 50, child: Obx(() => TextFormField(obscureText: !controller.isConfiPassVisible.value,
                controller: controller.confirm_password,
                decoration: InputDecoration(
                    hintText: "**********",
                    suffixIcon: IconButton(onPressed: () => controller.isConfiPassVisible.value = !controller.isConfiPassVisible.value, icon: Icon(!controller.isConfiPassVisible.value ? Icons.visibility_off_outlined : Icons.visibility_outlined, color: Colors.grey,))
                ),
              ))),
              Row(
                children: [
                  Obx(() =>
                      Checkbox(value: controller.isAgree.value,
                          activeColor: appcolors.primary,
                          onChanged: (value){
                            controller.isAgree.value = !controller.isAgree.value;
                          }),
                  ),
                  Expanded(child: Text("I agree to the Terms & Conditions and Privacy Policy.", maxLines: 1, style: TextStyle(fontSize: 14.sp),)),
                ],
              ),
              ElevatedButton(onPressed: () => controller.sign_up(), child: Text("Continue", style: TextStyle(color: Colors.white),)),
              SizedBox(height: 10.h,),
              Row(
                children: [
                  Expanded(child: Divider()),
                  Text(" OR "),
                  Expanded(child: Divider())
                ],
              ),
              SizedBox(height: 10.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?", style: TextStyle(fontSize: 14.sp),),
                  TextButton(onPressed: () => controller.sign_up(), child: Text("Log In", style: TextStyle(fontSize: 14.sp, color: appcolors.primary),),)
                ],
              ),

            ],
          
          ),
        ),
      )),
    );
  }
}
