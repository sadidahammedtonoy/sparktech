import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sparktech/App/routes.dart';
import 'package:sparktech/App/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 870),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) =>  GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Spark Tech',
        theme: CustomThemeApp.Theme,
        getPages: routes.pages,
        initialRoute: routes.Splash,
      ),
    );
  }
}