import 'package:finverse/common/app_colors.dart';
import 'package:finverse/common/device_utilities.dart';
import 'package:finverse/common/fonts.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/state_manager.dart';

class CongratsView extends GetView {
  const CongratsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back, color: AppColors.blueTitle),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Image.asset('assets/images/badge.png'),
              SizedBox(height: DeviceUtilities.screenHeight(context) * .1),
              Text(
                'Congratulations!',
                style: Fonts.montserratBold.copyWith(
                  fontSize: 28,
                  color: AppColors.blueTitle,
                ),
              ),
              SizedBox(height: DeviceUtilities.screenHeight(context) * .01),
              Text(
                'You completed Course V.',
                style: Fonts.gilroy.copyWith(
                  fontSize: 13,
                  color: AppColors.textBk,
                ),
              ),

              Text(
                'You also got a new badge to flex!',
                style: Fonts.gilroy.copyWith(
                  fontSize: 13,
                  color: AppColors.textBk,
                ),
              ),
              SizedBox(height: DeviceUtilities.screenHeight(context) * .02),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.blueTitle,
                ),
                child: Text(
                  'Continue Learning',
                  style: Fonts.montserratBold.copyWith(
                    fontSize: 16,
                    color: AppColors.textW,
                  ),
                ),
              ),
              SizedBox(height: DeviceUtilities.screenHeight(context) * .03),
              Text(
                'Share with you FinFriends',
                style: Fonts.gilroy.copyWith(
                  fontSize: 16,
                  color: AppColors.blurText,
                ),
              ),
              SizedBox(height: DeviceUtilities.screenHeight(context) * .01),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: FaIcon(
                      FontAwesomeIcons.facebook,
                      color: AppColors.blueTitle,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.share, color: AppColors.blueTitle),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: FaIcon(
                      FontAwesomeIcons.twitter,
                      color: AppColors.blueTitle,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
