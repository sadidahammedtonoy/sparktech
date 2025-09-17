import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:sparktech/App/endpoints.dart';
import 'package:sparktech/Core/services/Shareprefenrance/shareprefarance.dart';
import '../Model/model.dart';

class my_task_controller extends GetxController {
  var tasks = <Task>[].obs;

  Future<void> fetchTasks() async {
    String token = await SharedPreferencesHelper.getAccessToken() ?? "";
    try {
      final response = await http.get(
        Uri.parse(urls.get_all_task),
        headers: {"Content-Type": "application/json",
          "Authorization" : "Bearer $token"
        },
      );
      if (response.statusCode == 200) {
        final jsonResponse = jsonDecode(response.body);
        tasks.clear();
        for (var item in jsonResponse["data"]["myTasks"]) {
          tasks.add(Task.fromJson(item));
        }
      } else {
        print("Error: ${response.body}");
      }
    } catch (e) {
      print("Exception: $e");
    }
  }

  Future<void> delete_task(String id) async {
    String token = await SharedPreferencesHelper.getAccessToken() ?? "";
    try{
      final response = await http.delete(
          Uri.parse("${urls.delete_task}/$id"),
          headers: {"Content-Type": "application/json",
            "Authorization" : "Bearer $token"
          },
      );
      print(response.body);
      if(response.statusCode == 200){
       Get.back();
       Get.back();
      }
    }catch(e){
      Get.snackbar("Task Manager", "I have some issue.");
    }

  }


}