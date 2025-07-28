import 'package:finverse/common/app_colors.dart';
import 'package:finverse/common/device_utilities.dart';
import 'package:finverse/common/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dotted_border/dotted_border.dart';

class ReferralCard extends StatelessWidget {
  const ReferralCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: DeviceUtilities.screenHeight(context)*0.1,
        width: DeviceUtilities.screenWidth(context)*0.78,
        child: DottedBorder(
          options: RectDottedBorderOptions(
              dashPattern: [10, 5],
              strokeWidth: 2,
              color: AppColors.textW
            ),
          child: Container(
            
            decoration: BoxDecoration(
              color: Colors.transparent,
              //borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 2.0,right: 2.0,top: 5.0),
              child: Column(
                
                children: [
                  const Text(
                    'Your Referral Code',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 9,
                      height: 1
                    ),
                  ),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                       Text(
                        'KAV1EARNS',
                        style: Fonts.gilroySemiBold.copyWith(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                        ),
                      ),
                      Text(' | ',style: Fonts.gilroyBold.copyWith(color: AppColors.textW,fontSize: 35),),
                      TextButton(
                        onPressed: () {
                          Clipboard.setData(
                              const ClipboardData(text: 'KAV1EARNS'));
                          ScaffoldMessenger.of(context).showSnackBar(
                             SnackBar(content: Text('Code copied!',style: Fonts.gilroyBold.copyWith(color: AppColors.textW,fontSize: 18),)),
                          );
                        },
                        child: const Text(
                          'Copy\nCode',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColors.textW,
                            fontSize: 14,
                            height: 1
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
