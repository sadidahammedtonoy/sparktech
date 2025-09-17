import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../Controller/controller.dart';

class add_task extends StatelessWidget {
  add_task({super.key});
  final controller = Get.put(add_task_controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Task", style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Task Title", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),),
            TextFormField(
              controller: controller.title,
              decoration: InputDecoration(
                hintText: "e.g. Design Landing Page Header"
              ),
            ),
            SizedBox(height: 10.h,),
            Text("Description", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),),
            TextFormField(
              minLines: 2,
              maxLines: 2,
              controller: controller.description,
              decoration: InputDecoration(
                  hintText: "e.g. Include logo, navigation, and CTA button with brand color"
              ),
            ),
            SizedBox(height: 20.h,),
            ElevatedButton(onPressed: () => controller.save_task(), child: Text("Save Task", style: TextStyle(color: Colors.white),))
          ],
        ),
      ),
    );
  }
}
