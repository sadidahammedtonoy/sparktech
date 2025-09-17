import 'package:flutter/material.dart';
import 'package:sparktech/App/appColors.dart';
import 'package:sparktech/Presentation/UI/Shared/back_button.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../../App/assets.dart';
class account_setting extends StatelessWidget {
  const account_setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: back_button(),
        title: Text("Account Setting", style: TextStyle(fontSize: 18),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  spacing: 10,
                  children: [
                    SvgPicture.asset(assets.lock),
                    Text("Change password"),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios, color: appcolors.primary,)
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  spacing: 10,
                  children: [
                    Icon(Icons.delete, color: Colors.red,),
                    Text("Delete Account", style: TextStyle(color: Colors.red),),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios, color: Colors.red,)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
