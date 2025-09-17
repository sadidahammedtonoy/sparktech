import 'package:flutter/material.dart';
import 'package:sparktech/App/appColors.dart';
import 'package:get/get.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:sparktech/App/assets.dart';
import '../../../Shared/back_button.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Controller/controller.dart';

class splash extends StatelessWidget {
   splash({super.key});
   final controller = Get.put(splash_controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(assets.splash),
      ),
    );
  }
}
