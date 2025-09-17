import 'package:flutter/material.dart';
import 'package:sparktech/App/appColors.dart';
import 'package:sparktech/App/assets.dart';
import 'package:sparktech/App/routes.dart';
import 'package:sparktech/Core/Local%20Data/profile_data.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sparktech/Core/services/Shareprefenrance/shareprefarance.dart';

import '../Screens/account_setting/View/account_setting.dart';
import '../Screens/my_profile/View/my_profile.dart';
class profile_page extends StatelessWidget {
  const profile_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 8,
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 45,
                    backgroundImage: NetworkImage(profile.profileImage),
                  ),
                ),
                GestureDetector(
                  onTap: () => Get.to(my_profile()),
                  child: Card(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        spacing: 10,
                        children: [
                          Icon(Icons.perm_identity, color: appcolors.primary,),
                          Text("My profile"),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios, color: appcolors.primary,)
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => Get.to(account_setting()),
                  child: Card(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        spacing: 10,
                        children: [
                          Icon(Icons.settings, color: appcolors.primary,),
                          Text("Account Setting"),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios, color: appcolors.primary,)
                        ],
                      ),
                    ),
                  ),
                ),
                Text("More"),
                Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      spacing: 10,
                      children: [
                        SvgPicture.asset(assets.terms),
                        Text("Terms & Condition"),
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
                        SvgPicture.asset(assets.privacy),
                        Text("Privacy policy"),
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
                        SvgPicture.asset(assets.help),
                        Text("Help/Support"),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios, color: appcolors.primary,)
                      ],
                    ),
                  ),
                ),
            
                GestureDetector(
                  onTap: (){
                    Get.dialog(
                      Dialog(
                        backgroundColor: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            spacing: 10,
                            children: [
                              Text("Are you sure for logout?"),
                              Row(
                                spacing: 10,
                                children: [
                                  Expanded(child: ElevatedButton(onPressed: () => Get.back(), child: Text("Cancel", style: TextStyle(color: Colors.white),))),
                                  Expanded(child: ElevatedButton(onPressed: () {
                                    SharedPreferencesHelper.clearAccessToken();
                                    Get.offAllNamed(routes.login_page_screen);
                                  }, child: Text("Log Out", style: TextStyle(color: Colors.red),))),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    );
                  },
                  child: Card(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        spacing: 10,
                        children: [
                          SvgPicture.asset(assets.logout),
                          Text("Log Out")
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}
