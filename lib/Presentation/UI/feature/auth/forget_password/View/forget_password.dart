import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sparktech/Presentation/UI/Shared/back_button.dart';

import '../Controller/controller.dart';
class forget_password extends StatelessWidget {
  forget_password({super.key});
  final controller = Get.put(forget_password_controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: back_button(),
      ),
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("Verify Your Email", style: TextStyle(fontSize: 30.sp),),
              Text("We'll send a verification code to this email to confirm your account.", style: TextStyle(fontSize: 14.sp),),
              SizedBox(height: 20.h,),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text("Email Address", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),)),
              SizedBox(height: 50, child: TextFormField(
                controller: controller.forget_email,
              )),
              SizedBox(height: 30.h,),
              ElevatedButton(onPressed: () => controller.findAccount(), child: Text("Send", style: TextStyle(color: Colors.white),))
            ],
          ),
        ),
      )),
    );
  }
}
