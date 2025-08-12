import 'package:finverse/common/app_colors.dart';
import 'package:finverse/common/fonts.dart';
import 'package:finverse/controllers/commun_controller.dart';
import 'package:finverse/views/full_commun_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class CommunCard extends GetView<CommunityController> {
  const CommunCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.questions.isEmpty) {
        return const Center(child: CircularProgressIndicator());
      }

      return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.only(left: 10, right: 10),
        itemCount: controller.questions.length,
        itemBuilder: (context, index) {
          final questionItem = controller.questions[index];

          return InkWell(
            onTap: () {
              Get.to(() => FullCommunView(question: questionItem));
            },
            child: Card(
              margin: const EdgeInsets.symmetric(vertical: 6),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      questionItem.question,
                      style: Fonts.gilroySemiBold.copyWith(
                        fontSize: 12,
                        color: AppColors.textBk,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      questionItem.content,
                      style: Fonts.gilroy.copyWith(fontSize: 10),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
    });
  }
}
