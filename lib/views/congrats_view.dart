import 'package:finverse/common/app_colors.dart';
import 'package:finverse/common/device_utilities.dart';
import 'package:finverse/common/fonts.dart';
import 'package:finverse/models/app_title.dart';
import 'package:flutter/material.dart';

class CongratsView extends StatelessWidget {
  const CongratsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(color: AppColors.bgColor),
            child: Padding(
              padding: const EdgeInsets.only(top: 35.0, left: 10, right: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_back, color: AppColors.blueTitle),
                  ),
                  Spacer(),
                  AppTitle(
                    textColor: AppColors.blueTitle,
                    align: Alignment.topCenter,
                  ),
                  SizedBox(width: DeviceUtilities.screenWidth(context) * 0.3),
                ],
              ),
            ),
          ),
          Positioned(
            top: DeviceUtilities.screenHeight(context)*0.12,
            left: 0,
            right: 0,
            child: Container(
              height: DeviceUtilities.screenHeight(context) * 0.9,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.blueTitle,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '☠️ Error!',
                    style: Fonts.gilroySemiBold.copyWith(
                      fontSize: 22,
                      color: AppColors.highlightColor,
                      height: 1,
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '[',
                        style: TextStyle(
                          fontSize: 100,
                          color: AppColors.highlightColor,
                        ),
                      ),
                      SizedBox(
                        width: DeviceUtilities.screenWidth(context) * 0.01,
                      ),
                      Text(
                        'PAGE\nNOT\nFOUND',
                        textAlign: TextAlign.center,
                        style: Fonts.montserratBold.copyWith(
                          fontSize: 22,
                          color: AppColors.highlightColor,
                         
                        ),
                      ),
                      SizedBox(
                        width: DeviceUtilities.screenWidth(context) * 0.01,
                      ),
                      Text(
                        ']',
                        style: TextStyle(
                          fontSize: 100,
                          color: AppColors.highlightColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
