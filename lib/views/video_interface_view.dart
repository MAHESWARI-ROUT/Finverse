import 'package:finverse/common/app_colors.dart';
import 'package:finverse/common/device_utilities.dart';
import 'package:finverse/common/fonts.dart';
import 'package:finverse/models/app_title.dart';
import 'package:finverse/widgets/circular_container.dart';
import 'package:finverse/widgets/custom_card.dart';
import 'package:finverse/widgets/image_banner.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VideoInterfaceView extends GetView {
  const VideoInterfaceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          DeviceUtilities.screenHeight(context) * 0.15,
        ),
        child: Container(
          width: double.infinity,
          height: DeviceUtilities.screenHeight(context) * 0.15,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [AppColors.display1, AppColors.display2],
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(Icons.arrow_back, color: AppColors.textW),
              ),
              Spacer(),
              AppTitle(),
              Spacer(),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Container(
              height: DeviceUtilities.screenHeight(context) * 0.3,
              width: DeviceUtilities.screenWidth(context) * 0.9,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset(
                'assets/images/Group465.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(
                left: DeviceUtilities.screenHeight(context) * 0.025,
                right: DeviceUtilities.screenHeight(context) * 0.025,
              ),
              child: Row(
                children: [
                  Text(
                    'Start by Knowing all risk about\ndifferent saving models',
                    style: Fonts.gilroySemiBold.copyWith(
                      fontSize: 18,
                      color: AppColors.textBk,
                    ),
                  ),
                  SizedBox(width: DeviceUtilities.screenWidth(context) * 0.01),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_downward),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.only(
                left: DeviceUtilities.screenHeight(context) * 0.025,
                right: DeviceUtilities.screenHeight(context) * 0.025,
              ),
              child: Row(
                children: [
                  Icon(Icons.visibility_outlined, color: AppColors.blurText),
                  Text(
                    '19,23455 views',
                    style: Fonts.gilroy.copyWith(
                      fontSize: 12,
                      color: AppColors.textBk,
                    ),
                  ),
                  SizedBox(width: 10),
                  Icon(Icons.favorite, color: AppColors.blurText),
                  Text(
                    '47,987 likes',
                    style: Fonts.gilroy.copyWith(
                      fontSize: 12,
                      color: AppColors.textBk,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.only(
                left: DeviceUtilities.screenHeight(context) * 0.025,
                right: DeviceUtilities.screenHeight(context) * 0.025,
              ),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'More from Module 1',
                  style: Fonts.montserratSemiBold.copyWith(
                    fontSize: 15,
                    color: AppColors.textBk,
                  ),
                ),
              ),
            ),
            CustomCard(),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        label: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: DeviceUtilities.screenWidth(context) * 0.2,
          ),
          child: Text(
            'Take Assignment',
            style: Fonts.gilroySemiBold.copyWith(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(50),
        ),
        onPressed: () {},
        backgroundColor: AppColors.blueTitle,
      ),
    );
  }
}
