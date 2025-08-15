import 'dart:ui';

import 'package:finverse/common/app_colors.dart';
import 'package:finverse/common/device_utilities.dart';
import 'package:finverse/common/fonts.dart';
import 'package:finverse/controllers/assignment_controller.dart';
import 'package:finverse/controllers/question_controller.dart';
import 'package:finverse/widgets/question_container.dart';
import 'package:finverse/widgets/show_dialogbox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class AssignmentView extends StatelessWidget {
  AssignmentView({super.key});
  final controller = Get.find<AssignmentController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.questions.isEmpty) {
        return const Scaffold(body: Center(child: CircularProgressIndicator()));
      }

      final question = controller.questions[controller.currentIndex.value];

      return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: DeviceUtilities.screenHeight(context) * 1,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      IconButton(
                        onPressed: () {
                          showDialogbox(
                            context,
                            title: 'cancel Assignment',
                            cancelText: 'No,Resume Assignment',
                            confirmText: 'Yes,End Assignment',
                            message:
                                'Are you sure you want to end the assignment?',
                            onConfirm: () {
                              Get.back();
                            },
                          );
                        },
                        icon: Icon(
                          Icons.close,
                          color: AppColors.highlightColor,
                        ),
                      ),
                      Spacer(),
                      Text.rich(
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
                      Spacer(),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Text(
                        'Assignment 1',
                        style: Fonts.montserratSemiBold.copyWith(
                          fontSize: 20,
                          color: AppColors.textW,
                        ),
                      ),
                      Spacer(),
                      Text(
                        'Time left - 01:43',
                        style: Fonts.montserratSemiBold.copyWith(
                          fontSize: 14,
                          color: AppColors.textW,
                        ),
                      ), //dynamically time should be changed
                    ],
                  ),

                  SizedBox(
                    height: DeviceUtilities.screenHeight(context) * 0.03,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Question: ',
                            style: Fonts.gilroy.copyWith(
                              color: AppColors.textW,
                              fontSize: 12,
                            ),
                          ),
                          TextSpan(
                            text:
                                '${controller.currentIndex.value + 1} / ${controller.totalQuestions}',
                            style: Fonts.gilroy.copyWith(
                              color: AppColors.textW,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  LinearProgressIndicator(
                    value:
                        (controller.currentIndex.value + 1) /
                        controller.totalQuestions,
                    minHeight: 5,
                    color: AppColors.highlightColor,
                    backgroundColor: Colors.white38,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  SizedBox(
                    height: DeviceUtilities.screenHeight(context) * 0.05,
                  ),
                  QuestionContainer(
                    isAssignment: true,
                    question: question.questionsText,
                    options: question.options,
                    selectedOption: question.selectedOption,
                    onNext: controller.nextQuestion,
                    onPrev: controller.previousQuestion,
                    currentIndex: controller.currentIndex.value,
                    questionlength: controller.totalQuestions,
                    onOptionSelected: controller.selectOption,
                    onSubmit: controller.submitQuestion,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
