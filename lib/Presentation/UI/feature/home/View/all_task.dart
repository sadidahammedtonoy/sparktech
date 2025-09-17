import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sparktech/App/assets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../Controller/controller.dart';
import '../Screens/details_task/View/details_task.dart';


class AllTask extends StatelessWidget {
  AllTask({super.key});
  final controller = Get.put(my_task_controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2023/02/17/16/25/man-7796384_1280.jpg"),
          ),
        ),
        title: ListTile(
          title: Text("Sadid Ahammed", style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),),
          subtitle: Text("Welcome to Task Manager ", style: TextStyle(fontSize: 12.sp),),
        ),
        titleSpacing: -10,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("My Task", style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),),
            Expanded(child: ListView.separated(

                itemBuilder: (context, index){
              final task = controller.tasks[index];
              return GestureDetector(
                onTap: () => Get.to(task_details(id: task.id, title: task.title, description: task.description,)),
                child: Container(
                  child: Stack(
                    children: [
                      Image.asset(assets.card_background),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          spacing: 10,
                          children: [
                            SvgPicture.asset(assets.my_task),
                            Text(task.title,maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),),
                            Text(task.description, maxLines: 3, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 12.sp, color: Colors.grey),)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );

            }, separatorBuilder: (context, index) => SizedBox(height: 20,), itemCount: controller.tasks.length))
          ],
        ),
      ),
    );
  }
}
