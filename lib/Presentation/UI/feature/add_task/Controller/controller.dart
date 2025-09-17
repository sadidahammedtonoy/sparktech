import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:sparktech/App/endpoints.dart';
class add_task_controller extends GetxController{
  TextEditingController title = TextEditingController();
  TextEditingController description = TextEditingController();

  Future<void> save_task () async {
    if(title.text.isNotEmpty){
      final _body = {
        "title": title.text,
        "description": description.text
      };
      try{
        final response = await http.post(
            Uri.parse(urls.create_task),
            headers: {"Content-Type": "application/json",
              "Authorization" : "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiI2OGNhN2EwMmZmYmVjNTgzZTQxZWRhOTIiLCJlbWFpbCI6ImRpY2VjaW4zNjZAa3dpZmEuY29tIiwiaWF0IjoxNzU4MTAwMDM4LCJleHAiOjE3NTgxODY0Mzh9.ZGKXyWyuaEMVRAp2IMY-QEz-QVmuV-o0qlyMqQnOH8E"
            },
            body: jsonEncode(_body)
        );
        if(response.statusCode == 200){
          title.clear();
          description.clear();
          Get.dialog(
              Dialog(
                backgroundColor: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    spacing: 30,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Your task is added successfully."),
                      ElevatedButton(onPressed: () => Get.back(), child: Text("Ok", style: TextStyle(color: Colors.white),))
                    ],
                  ),
                ),
              )
          );
        }
      }catch(e){
        Get.snackbar("Task Manager", "I have some issue.");
      }
    }
  }
}