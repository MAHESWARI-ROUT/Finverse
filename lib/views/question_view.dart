import 'package:finverse/common/app_colors.dart';
import 'package:finverse/common/device_utilities.dart';
import 'package:finverse/common/fonts.dart';
import 'package:finverse/controllers/question_controller.dart';
import 'package:finverse/widgets/question_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class QuestionView extends StatelessWidget {
  QuestionView({super.key});
  final controller = Get.find<QuestionController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.questions.isEmpty) {
        return const Scaffold(
          body: Center(child: CircularProgressIndicator()),
        );
      }

      final question = controller.questions[controller.currentIndex.value];

      return Scaffold(
        body: SingleChildScrollView(
          child: Container(
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
            child: Padding(
              padding: EdgeInsets.only(
                top: DeviceUtilities.screenHeight(context) * 0.05,
                left: DeviceUtilities.screenWidth(context) * 0.07,
                right: DeviceUtilities.screenWidth(context) * 0.07,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
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
                  ),
                  SizedBox(height: DeviceUtilities.screenHeight(context) * 0.03),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Hey Kavi !👋',
                      style: Fonts.montserratExtraBold.copyWith(
                        fontSize: 12,
                        color: AppColors.textW,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Help us know you better',
                      style: Fonts.montserratSemiBold.copyWith(
                        fontSize: 20,
                        color: AppColors.bgColor,
                      ),
                    ),
                  ),
                  SizedBox(height: 0,),
                  Align(
                    
                    alignment: Alignment.topLeft,
                    child: Text(
                      
                      'for curated courses!',
                      style: Fonts.montserratSemiBold.copyWith(
                        fontSize: 20,
                        color: AppColors.bgColor,
                      ),
                    ),
                  ),
                  SizedBox(height: DeviceUtilities.screenHeight(context) * 0.06),
                  LinearProgressIndicator(
                    value: controller.currentIndex.value / controller.totalQuestions,
                    minHeight: 5,
                    color: AppColors.highlightColor,
                    backgroundColor: Colors.white38,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  SizedBox(height:DeviceUtilities.screenHeight(context) * 0.05),
                  QuestionContainer(
                    question: question.questionsText,
                    options: question.options,
                  ),
                  SizedBox(height: 10,),
                  Text('Swipe left or right to check more '),
                  SizedBox(height: 10,),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
