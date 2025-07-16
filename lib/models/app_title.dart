import 'package:finverse/common/app_colors.dart';
import 'package:finverse/common/fonts.dart';
import 'package:flutter/material.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return  Align(
                  alignment: Alignment.center,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Fin',
                          style: Fonts.montserratSemiBold.copyWith(
                            fontSize: 24,
                            color: AppColors.textW,
                          ),
                        ),
                        TextSpan(
                          text: 'Verse',
                          style: Fonts.montserratLight.copyWith(
                            fontSize: 24,
                            color: AppColors.textW,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
  }
}