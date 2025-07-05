
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

import '../../common/app_colors.dart';
import '../../common/fonts.dart';

class Preload2Screen extends GetView {
  const Preload2Screen({super.key});

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'with',
              style: Fonts.montserratExtraBold.copyWith(
                fontSize: 18,
                color: AppColors.textW,
                height: 1.0,
              ),
            ),

            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Fin',
                    style: Fonts.montserratExtraBold.copyWith(
                      fontSize: 36,
                      color: AppColors.textW,
                    ),
                  ),
                  TextSpan(
                    text: 'Verse',
                    style: Fonts.montserratLight.copyWith(
                      fontSize: 36,
                      color: AppColors.textW,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
