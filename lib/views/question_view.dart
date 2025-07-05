import 'package:finverse/models/app_colors.dart';
import 'package:finverse/models/device_utilities.dart';
import 'package:finverse/models/fonts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuestionView extends GetView {
  const QuestionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.display1,
              AppColors.display2,
              AppColors.display3,
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            top: DeviceUtilities.screenHeight(context) * 0.05,
            left: DeviceUtilities.screenWidth(context) * 0.07,
            right: DeviceUtilities.screenWidth(context) * 0.07,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Fin',
                        style: Fonts.montserratExtraBold.copyWith(
                          fontSize: 30,
                          color: AppColors.textW,
                        ),
                      ),
                      TextSpan(
                        text: 'Verse',
                        style: Fonts.montserratExtraLight.copyWith(
                          fontSize: 30,
                          color: AppColors.textW,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: DeviceUtilities.screenHeight(context) * 0.03),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Hey Kavi !👋',
                  style: Fonts.montserratExtraBold.copyWith(
                    fontSize: 18,
                    color: AppColors.textW,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Help us know you better',
                  style: Fonts.montserratSemiBold.copyWith(
                    fontSize: 24,
                    color: AppColors.bgColor,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'for curated courses!',
                  style: Fonts.montserratSemiBold.copyWith(
                    fontSize: 24,
                    color: AppColors.bgColor,
                  ),
                ),
              ),
              SizedBox(height: DeviceUtilities.screenHeight(context) * 0.05),
              LinearProgressIndicator(
                value: 4/10,
                minHeight: 5,
                color: AppColors.highlightColor,
                backgroundColor: Colors.white38,
                borderRadius: BorderRadius.circular(20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
