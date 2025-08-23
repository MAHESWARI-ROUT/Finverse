import 'package:finverse/common/app_colors.dart';
import 'package:finverse/common/fonts.dart';
import 'package:flutter/material.dart';

class AppTitle extends StatelessWidget {
  final Color? textColor;
  final AlignmentGeometry? align;
  const AppTitle({super.key,this.textColor = AppColors.textW,this.align =  Alignment.center});

  @override
  Widget build(BuildContext context) {
    return  Align(
                  alignment: align!,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Fin',
                          style: Fonts.montserratSemiBold.copyWith(
                            fontSize: 24,
                            color: textColor,
                          ),
                        ),
                        TextSpan(
                          text: 'Verse',
                          style: Fonts.montserratLight.copyWith(
                            fontSize: 24,
                            color: textColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
  }
}