import 'package:finverse/common/app_colors.dart';
import 'package:finverse/common/device_utilities.dart';
import 'package:finverse/common/fonts.dart';
import 'package:finverse/views/commun_home_view.dart';
import 'package:finverse/widgets/circular_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class ProfileView extends GetView {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //profile avatar
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.blueTitle,
                AppColors.lightBlue,
                AppColors.display3,
              ],
            ),
          ),
          height: DeviceUtilities.screenHeight(context) * 1,
          width: double.infinity,

          child: Padding(
            padding: EdgeInsets.only(
              bottom: DeviceUtilities.screenHeight(context) * 0.50,
            ),
            child: IntrinsicHeight(
              child: Stack(
                alignment: Alignment.center,
                children: [

                  //outer circular container + fin learner
                  CircularContainer(
                    paddingValue: 0,
                    isgradient: true,
                    gradientcolor: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF7C97ED),
                        Color.fromARGB(255, 119, 147, 239),
                      ],
                    ),
                    radius: 263,

                    height: 263,
                    width: 263,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Novice',
                              style: Fonts.montserrat.copyWith(
                                fontSize: 12,
                                color: AppColors.textW,
                                decoration: TextDecoration.none,
                              ),
                            ),

                            TextSpan(
                              text: ' Fin',
                              style: Fonts.montserratBold.copyWith(
                                fontSize: 12,
                                color: AppColors.textW,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            TextSpan(
                              text: 'Learner',
                              style: Fonts.montserrat.copyWith(
                                fontSize: 12,
                                color: AppColors.textW,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  //inner circular container + user name
                  Align(
                    alignment: Alignment.center,
                    child: CircularContainer(
                      paddingValue: 0,
                      isgradient: true,
                      gradientcolor: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xFF89A3F4), Color(0xFF7C97ED)],
                      ),
                      radius: 213,
                      color: Colors.white,
                      height: 213,
                      width: 213,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Kavi',
                                style: Fonts.montserratBold.copyWith(
                                  fontSize: 22,
                                  color: AppColors.textW,
                                  decoration: TextDecoration.none,
                                ),
                              ),

                              TextSpan(
                                text: ' K.',
                                style: Fonts.montserrat.copyWith(
                                  fontSize: 22,
                                  color: AppColors.textW,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  //avatar image + pro badge
                  Align(
                    alignment: Alignment.center,
                    child: Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.center,
                      children: [
                        CircularContainer(
                          paddingValue: 0,
                          radius: 150,
                          color: Color(0xFF3B37F5),
                          height: 150,
                          width: 150,
                          child: ClipOval(
                            child: FittedBox(
                              child: Image.asset(
                                'assets/images/Ellipse1209.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),

                        //pro badge
                        Positioned(
                          bottom: -5,
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: CircularContainer(
                              radius: 20,
                              height: 20,
                              width: 40,
                              color: Color(0xFF3B37F5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/icons/pro_star.png',width: 10,),
                                  Text(
                                    ' Pro',
                                    style: Fonts.montserratBold.copyWith(
                                      fontSize: 7,
                                      color: AppColors.textW,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                ],
                              ),
                            ),
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

        //Back button
        Positioned(
          top: DeviceUtilities.screenHeight(context) * 0.04,
          left: DeviceUtilities.screenWidth(context) * 0.02,
          child: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back, color: Colors.white),
          ),
        ),

        //Fin Score
        Positioned(
          left: 0,
          right: 0,
          top: DeviceUtilities.screenHeight(context) * 0.49,
          child: Container(
            height: DeviceUtilities.screenHeight(context) * 0.55,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.blueTitle,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(
                    '2269',
                    style: Fonts.gilroySemiBold.copyWith(
                      fontSize: 42,
                      color: AppColors.textW,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  Text(
                    'Fin Score',
                    style: Fonts.gilroySemiBold.copyWith(
                      fontSize: 14,
                      color: AppColors.textW,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),

        //bottom part of the screen
        Positioned(
          left: 0,
          right: 0,
          top: DeviceUtilities.screenHeight(context) * 0.62,
          child: Container(
            height: DeviceUtilities.screenHeight(context) * 0.4,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFFF8F8F8),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 2,
                  mainAxisSpacing: DeviceUtilities.screenHeight(context) * 0.02,
                  crossAxisSpacing: DeviceUtilities.screenWidth(context) * 0.04,
                ),
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.highlightColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/image31.png'),
                          Text(
                            'Badges',
                            style: Fonts.gilroySemiBold.copyWith(
                              fontSize: 15,
                              color: AppColors.textBk,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: (){
                      Get.toNamed('/analytics_view');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.highlightColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/image32.png'),
                            Text(
                              'Analytics',
                              style: Fonts.gilroySemiBold.copyWith(
                                fontSize: 15,
                                color: AppColors.textBk,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.highlightColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/image33.png'),
                          Text(
                            'Activity',
                            style: Fonts.gilroySemiBold.copyWith(
                              fontSize: 15,
                              color: AppColors.textBk,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.highlightColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/image34.png'),
                          Text(
                            'Subscription',
                            style: Fonts.gilroySemiBold.copyWith(
                              fontSize: 15,
                              color: AppColors.textBk,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed('/commun_home');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.highlightColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/image35.png'),
                            Text(
                              'Community',
                              style: Fonts.gilroySemiBold.copyWith(
                                fontSize: 15,
                                color: AppColors.textBk,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.highlightColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/image36.png'),
                          Text(
                            'Settings',
                            style: Fonts.gilroySemiBold.copyWith(
                              fontSize: 15,
                              color: AppColors.textBk,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
