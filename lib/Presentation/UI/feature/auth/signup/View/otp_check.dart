import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import '../../../../../../App/appColors.dart';
import '../../../../Shared/back_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../Controller/controller.dart';


class otp_check extends StatelessWidget {
  otp_check({super.key});
  final controller = Get.put(sign_up_controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: back_button(),
      ),
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("6-digit code", style: TextStyle(fontSize: 30.sp),),
            Text("Please enter the code we've sent to ${controller.email.text}", textAlign: TextAlign.center, style: TextStyle(fontSize: 14.sp),),
            SizedBox(height: 20.h,),
            Pinput(
              controller: controller.OTP_controller,
              length: 6,
              defaultPinTheme: PinTheme(
                width: 50,
                height: 50,
                textStyle: Theme.of(context).textTheme.displaySmall
                    ?.copyWith(
                  color: appcolors.primary,
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w400,
                ),
                decoration: BoxDecoration(
                  color: appcolors.primary.withOpacity(0.05),
                  border: Border.all(color: appcolors.primary),
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
            ),
            SizedBox(height: 30.h,),
            ElevatedButton(onPressed: () => controller.verify_otp(), child: Text("Confirm", style: TextStyle(color: Colors.white),))
          ],
        ),
      )),
    );
  }
}
