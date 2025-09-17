import 'package:flutter/material.dart';
import 'package:motion_tab_bar/MotionTabBar.dart';
import 'package:motion_tab_bar/MotionTabBarController.dart';
import 'package:sparktech/App/appColors.dart';
import 'package:get/get.dart';
import '../../add_task/View/add_task.dart';
import '../../home/Controller/controller.dart';
import '../../home/View/all_task.dart';
import '../../profile/View/profile.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> with TickerProviderStateMixin {
  late MotionTabBarController _motionTabBarController;

  @override
  void initState() {
    super.initState();
    _motionTabBarController = MotionTabBarController(
      initialIndex: 0,
      length: 3,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _motionTabBarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MotionTabBar(
        controller: _motionTabBarController,
        initialSelectedTab: "My Task",
        labels: const ["My Task", "Add task", "Profile"],
        icons: const [Icons.home_outlined, Icons.add, Icons.perm_identity],
        tabSize: 50,
        tabBarHeight: 55,
        textStyle: const TextStyle(
          fontSize: 12,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
        tabIconColor: Colors.black,
        tabIconSize: 28.0,
        tabIconSelectedSize: 26.0,
        tabSelectedColor: appcolors.primary,
        tabIconSelectedColor: Colors.white,
        tabBarColor: Colors.white,
        onTabItemSelected: (int value) {
          setState(() {
            _motionTabBarController.index = value;
            if(value == 0){
              Get.put(my_task_controller()).fetchTasks();
            }
          });
        },
      ),
      body: TabBarView(
        controller: _motionTabBarController,
        children: [
          AllTask(),
          add_task(),
          profile_page()
        ],
      ),
    );
  }
}