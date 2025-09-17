import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sparktech/Presentation/UI/Shared/back_button.dart';

import '../Controller/controller.dart';


class edit_task extends StatelessWidget {
  edit_task({super.key});
  final controller = Get.put(edit_task_controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: back_button(),
        title: Text("Edit Task", style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Task Title", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),),
            TextFormField(
              controller: controller.edit_title,
              decoration: InputDecoration(
                  hintText: "e.g. Design Landing Page Header"
              ),
            ),
            SizedBox(height: 10.h,),
            Text("Description", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),),
            TextFormField(
              minLines: 2,
              maxLines: 2,
              controller: controller.edit_description,
              decoration: InputDecoration(
                  hintText: "e.g. Include logo, navigation, and CTA button with brand color"
              ),
            ),
            SizedBox(height: 20.h,),
            ElevatedButton(onPressed: () => controller.update_task(), child: Text("Update Task", style: TextStyle(color: Colors.white),))
          ],
        ),
      ),
    );  }
}
