import 'dart:async';

import 'package:finverse/common/app_colors.dart';
import 'package:finverse/common/device_utilities.dart';
import 'package:finverse/common/fonts.dart';
import 'package:finverse/models/app_title.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class ErrorView extends StatefulWidget {
  const ErrorView({super.key});

  @override
  State<ErrorView> createState() => _ErrorViewState();
}

class _ErrorViewState extends State<ErrorView> {
  Timer? _redirectTimer;

  @override
  void initState() {
    super.initState();
    _redirectTimer = Timer(const Duration(seconds: 5), () {
      Get.offAllNamed('/');
    });
  }

  void _navigateHome() {
    _redirectTimer?.cancel(); // Cancel the timer if user navigates manually
    Get.offAllNamed('/');
  }

  @override
  void dispose() {
    _redirectTimer?.cancel(); // Clean up when widget is destroyed
    super.dispose();
  }



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
                    onPressed: _navigateHome,
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
                  Text(
                    'Reason: App Under Dev',
                    style: Fonts.montserrat.copyWith(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 80),
                  GestureDetector(
                    onTap:_navigateHome,
                    child: Text.rich(
                      TextSpan(
                        text:
                        'This page will automatically redirect to home in few secs.\n',
                        style: Fonts.montserrat.copyWith(
                          fontSize: 12,
                          color: Colors.white60,
                        ),
                        children: const [
                          TextSpan(
                            text: 'if not, click here',
                            style: TextStyle(
                              color: Colors.white,
                              decoration: TextDecoration.underline,
                            ),
                          )
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
