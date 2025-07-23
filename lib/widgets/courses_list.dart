import 'package:finverse/common/app_colors.dart';
import 'package:finverse/common/fonts.dart';
import 'package:finverse/controllers/course_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CoursesList extends StatelessWidget {
  CoursesList({super.key});

  final controller = Get.find<CourseController>();
  final List<String> categories = ["All", "Investment", "Savings", "Live"];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        height: 40,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          separatorBuilder: (_, __) => const SizedBox(width: 12),
          itemBuilder: (context, index) {
            return Obx(() {
              final isSelected = controller.selectedIndex.value == index;

              Color bgColor;
              Color textColor;

              if (isSelected && categories[index] == "Live") {
                bgColor = AppColors.mainColor;
                textColor = Colors.redAccent;
              } else if (isSelected) {
                bgColor = AppColors.mainColor;
                textColor = Colors.white;
              } else if (categories[index] == "Live") {
                bgColor = AppColors.optionBox;
                textColor = Colors.redAccent;
              } else {
                bgColor = AppColors.optionBox;
                textColor = Colors.black54;
              }

              return GestureDetector(
                onTap: () {
                  controller.setSelectedIndex(index); // visual state
                  
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: bgColor,
                  ),
                  child: Text(
                    categories[index],
                    style: Fonts.gilroy.copyWith(
                      fontSize: 14,
                      color: textColor,
                    ),
                  ),
                ),
              );
            });
          },
        ),
      ),
    );
  }
}
