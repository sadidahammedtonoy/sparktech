import 'package:flutter/material.dart';
import 'package:sparktech/App/appColors.dart';
import 'package:sparktech/App/assets.dart';
import 'package:sparktech/Presentation/UI/Shared/back_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../Controller/controller.dart';
import '../../edit_task/Controller/controller.dart';
import '../../edit_task/View/edit_task.dart';

class task_details extends StatelessWidget {
  String id;
  String title;
  String description;
  task_details({super.key, required this.id, required this.title, required this.description});
  final controller = Get.put(my_task_controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: back_button(),
        title: Text("Tasks Details", style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              spacing: 10,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  spacing: 10,
                  children: [
                    SvgPicture.asset(assets.text),
                    Text("Task Title", style: TextStyle(fontWeight: FontWeight.w500),)
                  ],
                ),
                Text(title),
                Divider(color: appcolors.primary,),
                Row(
                  spacing: 10,
                  children: [
                    SvgPicture.asset(assets.text),
                    Text("Task Description", style: TextStyle(fontWeight: FontWeight.w500),)
                  ],
                ),
                Text(description),
                Divider(color: appcolors.primary,),
                Row(
                  spacing: 20,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          Get.dialog(
                            Dialog(
                              backgroundColor: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  spacing: 30,
                                  children: [
                                    Text("Are you sure you want to delete this task?"),
                                    Row(
                                      spacing: 20,
                                      children: [
                                        Expanded(
                                          child: GestureDetector(
                                            onTap: () => controller.delete_task(id),
                                            child: Container(
                                              padding: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  color: Colors.red.withOpacity(0.1),
                                                  borderRadius: BorderRadius.circular(8),
                                                  border: Border.all(
                                                      color: Colors.red
                                                  )
                                              ),
                                              child: Row(
                                                spacing: 5,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Icon(Icons.delete_outline_outlined, color: Colors.red,),
                                                  Text("Delete", style: TextStyle(fontWeight: FontWeight.w500),)
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: GestureDetector(
                                            onTap: () => Get.back(),
                                            child: Container(
                                              padding: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  color: appcolors.primary.withOpacity(0.1),
                                                  borderRadius: BorderRadius.circular(8),
                                                  border: Border.all(
                                                      color: appcolors.primary
                                                  )
                                              ),
                                              child: Center(child: Text("Cancel", style: TextStyle(fontWeight: FontWeight.w500),))
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.red.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                  color: Colors.red
                              )
                          ),
                          child: Row(
                            spacing: 5,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.delete_outline_outlined, color: Colors.red,),
                              Text("Delete Task", style: TextStyle(fontWeight: FontWeight.w500),)
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                         final con = Get.put(edit_task_controller());
                         con.edit_title.text = title ;
                         con.edit_description.text = description;
                         con.id = id;
                         Get.to(edit_task());
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: appcolors.primary.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                  color: appcolors.primary
                              )
                          ),
                          child: Row(
                            spacing: 5,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.edit_calendar_outlined, color: appcolors.primary,),
                              Text("Edit Task", style: TextStyle(fontWeight: FontWeight.w500),)
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                )



              ],
            ),
          ),
        ),
      )),
    );
  }
}
