import 'package:flutter/material.dart';
import 'package:sparktech/App/appColors.dart';
import 'package:sparktech/App/assets.dart';
import 'package:sparktech/Core/Local%20Data/profile_data.dart';
import 'package:sparktech/Presentation/UI/Shared/back_button.dart';
import 'package:flutter_svg/flutter_svg.dart';
class my_profile extends StatelessWidget {
  const my_profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: back_button(),
        title: Text("My profile", style: TextStyle(fontSize: 14),),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.edit, color: appcolors.primary,))
        ],
      ),
      body: Column(
        children: [
          Center(
            child: CircleAvatar(
              radius: 45,
              backgroundImage: NetworkImage(profile.profileImage),
            ),
          ),
          Text(profile.userName,style: TextStyle(fontSize: 18),),
          Card(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                spacing: 10,
                children: [
                  Icon(Icons.perm_identity, color: appcolors.primary,),
                  Text(profile.userName),
                  Spacer(),
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
                  SvgPicture.asset(assets.at_the_rate),
                  Text(profile.userEmail),
                  Spacer(),
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
                  SvgPicture.asset(assets.location),
                  Text("1234 Elm Street, Springfield, IL"),
                  Spacer(),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
