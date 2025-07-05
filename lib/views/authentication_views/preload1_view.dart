import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

import '../../common/app_colors.dart';
import '../../common/fonts.dart';

class Preload1Screen extends GetView {
  const Preload1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
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
        child: Align(
          child: Text.rich(
            
            TextSpan(
              children: [
                TextSpan(
                  text: 'Know ',
                  
                  style: Fonts.montserrat.copyWith(fontSize: 28,color: AppColors.textW),
                ),
                TextSpan(
                  text: 'Your ',
                  style: Fonts.montserrat.copyWith(fontSize: 28,color: AppColors.textW),
                ),
                TextSpan(
                  text: 'Fin',
                  style: Fonts.montserratExtraBold.copyWith(fontSize: 28,color: AppColors.textW,
                    fontWeight: FontWeight.w900),
                ),
                TextSpan(
                  text: 'ances',
                  style: Fonts.montserrat.copyWith(
                    fontSize: 28,color: AppColors.textW
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
