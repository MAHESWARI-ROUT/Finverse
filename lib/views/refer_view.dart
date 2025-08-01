import 'package:finverse/common/app_colors.dart';
import 'package:finverse/common/device_utilities.dart';
import 'package:finverse/common/fonts.dart';
import 'package:finverse/widgets/circular_container.dart';
import 'package:finverse/widgets/image_banner.dart';
import 'package:finverse/widgets/referal_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/state_manager.dart';

class ReferView extends GetView {
  const ReferView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: DeviceUtilities.screenHeight(context) * 1,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.blueTitle,
                  AppColors.display2,
                  AppColors.display3,
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 25),
              child: Center(
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          alignment: Alignment.topLeft,
                          onPressed: () {},
                          icon: Icon(Icons.arrow_back, color: AppColors.textW),
                        ),
                        SizedBox(
                          width: DeviceUtilities.screenWidth(context) * 0.025,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Refer Your Friends',
                                style: Fonts.montserratBold.copyWith(
                                  fontSize: 22,
                                  color: AppColors.textW,
                                ),
                              ),
                              Text(
                                'and Earn',
                                style: Fonts.montserratBold.copyWith(
                                  fontSize: 22,
                                  color: AppColors.textW,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: DeviceUtilities.screenHeight(context) * 0.04,
                    ),
                    ImageBanner(
                      fit: BoxFit.cover,
                      imageurl: 'assets/images/Group 491.png',
                      height: DeviceUtilities.screenHeight(context) * 0.18,
                      width: DeviceUtilities.screenWidth(context) * 0.9,
                    ),
                    SizedBox(
                      height: DeviceUtilities.screenHeight(context) * 0.02,
                    ),
                    Text(
                      'Using your referral, your friend earns 100 Finar,\nand you too earn 100 Finar once they start learning.',
                      style: Fonts.gilroySemiBold.copyWith(
                        color: AppColors.textW,
                        fontSize: 9,
                      ),
                    ),
                    SizedBox(
                      height: DeviceUtilities.screenHeight(context) * 0.03,
                    ),
                    ReferralCard(),
                    SizedBox(
                      height: DeviceUtilities.screenHeight(context) * 0.03,
                    ),
                    Text(
                      'Share your FinVerse referral via:',
                      style: Fonts.montserratBold.copyWith(
                        color: AppColors.textBk,
                        fontSize: 12,
                      ),
                    ),
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
          ),
          Positioned(
            top: DeviceUtilities.screenHeight(context) * 0.68,
            left: 0,
            right: 0,
            child: Container(
              height: DeviceUtilities.screenHeight(context) * 0.60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.blueTitle,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircularContainer(
                      radius: 50,
                      height: 50,
                      width: 50,
                      child: Image.asset('assets/images/Ellipse1209.png'),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Kavi K.',
                          style: Fonts.montserratBold.copyWith(
                            fontSize: 12,
                            color: AppColors.textW,
                          ),
                        ),
                        Text(
                          '1200 Finar Earned',
                          style: Fonts.montserratSemiBold.copyWith(
                            fontSize: 21,
                            color: AppColors.textW,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: DeviceUtilities.screenHeight(context) * 0.78,
            left: 0,
            right: 0,
            child: Container(
              height: DeviceUtilities.screenHeight(context) * 0.4,
              width: double.infinity,
              padding: EdgeInsets.only(
                top: DeviceUtilities.screenHeight(context) * 0.025,
                left: DeviceUtilities.screenWidth(context) * 0.07,
                right: DeviceUtilities.screenWidth(context) * 0.07,
              ),
              decoration: BoxDecoration(
                color: AppColors.textW,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'FAQs:',
                      style: Fonts.montserratBold.copyWith(
                        fontSize: 16,
                        color: AppColors.textBk,
                      ),
                    ),
                    Text(
                      'What is Refer And Earn?',
                      style: Fonts.montserratSemiBold.copyWith(
                        fontSize: 10,
                        color: AppColors.textBk,
                      ),
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad ',
                      style: Fonts.montserrat.copyWith(
                        fontSize: 8,
                        color: AppColors.textBk,
                      ),
                    ),
                    SizedBox(height: DeviceUtilities.screenHeight(context)*0.01,),
                    Text(
                      'What is Finar?',
                      style: Fonts.montserratSemiBold.copyWith(
                        fontSize: 10,
                        color: AppColors.textBk,
                      ),
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad ',
                      style: Fonts.montserrat.copyWith(
                        fontSize: 8,
                        color: AppColors.textBk,
                      ),
                    ),
                    SizedBox(height: DeviceUtilities.screenHeight(context)*0.01,),
                    Text(
                      'Got More Questions?',
                      style: Fonts.montserratSemiBold.copyWith(
                        fontSize: 10,
                        color: AppColors.textBk,
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Check Out ',
                            style: Fonts.montserrat.copyWith(
                              fontSize: 8,
                              color: AppColors.textBk,
                            ),
                          ),
                          TextSpan(
                            text: 'FinVerse Community',
                            style: Fonts.montserratBold.copyWith(
                              fontSize: 8,
                              color: AppColors.textBk,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
