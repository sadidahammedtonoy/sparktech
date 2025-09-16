import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../App/appColors.dart';
import '../../../../../App/assets.dart';
class onBording extends StatelessWidget {
  const onBording({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: OnBoardingSlider(
        headerBackgroundColor: Colors.white,

        finishButtonText: 'Finished',
        finishButtonStyle: FinishButtonStyle(
          backgroundColor: appcolors.primary,
        ),
        skipTextButton: Text('Skip', style: TextStyle(color: appcolors.primary),),
        indicatorAbove: true,
        controllerColor: appcolors.primary,
        background: [
          SizedBox(),
          SizedBox(),
          SizedBox(),
        ],
        totalPage: 3,
        speed: 1.8,
        pageBodies: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SvgPicture.asset(assets.onBording_1),
                Text('Manage Everything in One Place', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),),
                Text('Create, categorize, and keep track of all your personal and work tasks effortlessly — right from your dashboard.', textAlign: TextAlign.center, style: TextStyle(fontSize: 14, color: Colors.grey),),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SvgPicture.asset(assets.onBording_2),
                Text('Focus on What Matters Most', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),),
                Text('Set priorities, add deadlines, and sort tasks by importance so you can tackle what truly moves you forward.', textAlign: TextAlign.center, style: TextStyle(fontSize: 14, color: Colors.grey),),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SvgPicture.asset(assets.onBording_3),
                Text('Visualize Progress, Stay on Track', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),),
                Text('Monitor completed tasks, ongoing projects, and upcoming deadlines — all in a clear, visual format.', textAlign: TextAlign.center, style: TextStyle(fontSize: 14, color: Colors.grey),),
              ],
            ),
          ),
        ],
      ),),
    );
  }
}
