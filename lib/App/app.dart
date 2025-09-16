import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sparktech/App/routes.dart';
import 'package:sparktech/App/theme.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Spark Tech',
      theme: CustomThemeApp.Theme,
      getPages: routes.pages,
      initialRoute: routes.Splash,
    );
  }
}