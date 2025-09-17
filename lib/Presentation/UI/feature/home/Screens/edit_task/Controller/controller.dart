import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class edit_task_controller extends GetxController {
  TextEditingController edit_title = TextEditingController();
  TextEditingController edit_description = TextEditingController();
  String id = '';

  Future<void> update_task() async {
    //TODO: call edit api
    Get.back();
  }
}