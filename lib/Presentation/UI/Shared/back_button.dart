import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../App/appColors.dart';

class back_button extends StatelessWidget {
  const back_button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: () => Get.back(), icon: Container(
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
              color: Colors.grey,
              width: 0.1
          )
      ),
      child: Center(child: Icon(Icons.arrow_back_ios_new_rounded, color: appcolors.primary,)),
    ));
  }
}
