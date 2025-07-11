import 'package:finverse/common/app_colors.dart';
import 'package:finverse/common/device_utilities.dart';
import 'package:finverse/common/fonts.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';

class QuestionContainer extends StatelessWidget {
  final String question;
  final List<String> options;
  final String? selectedOption;
  //final void Function(String) onOptionSelected;
  final VoidCallback onNext;
  final VoidCallback onPrev;
  const QuestionContainer({
    super.key,
    required this.question,
    required this.options,
    this.selectedOption,
    required this.onNext,
    required this.onPrev,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 482,
          width: 310,
          padding: EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 40),

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColors.highlightColor,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                question,
                style: Fonts.gilroySemiBold.copyWith(
                  color: AppColors.textBk,
                  fontSize: 22,
                ),
              ),
              SizedBox(height: 10),
              ...options.map((option) {
                final isSelected = selectedOption == option;
                return Padding(
                  padding: EdgeInsetsGeometry.all(5),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 40,
                      width: 270,
                      decoration: BoxDecoration(
                        color: AppColors.optionBox,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 2.0),
                                child: Icon(
                                  Icons.circle_outlined,
                                  size: 12,
                                  color: AppColors.texthint,
                                ),
                              ),
                              SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  option,
                                  style: Fonts.gilroy.copyWith(
                                    fontSize: 12,
                                    color: AppColors.texthint,
                                  ),
                                  softWrap: true,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
              Row(
                children: [
                  TextButton.icon(
                    onPressed: onPrev,
                    label: Text(
                      'Prev',
                      style: Fonts.gilroySemiBold.copyWith(fontSize: 12),
                    ),
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: AppColors.mainColor,
                      size: 12,
                    ),
                  ),
                  Spacer(),
                  TextButton.icon(
                    onPressed: onNext,
                    label: Text(
                      'next',
                      style: Fonts.gilroySemiBold.copyWith(fontSize: 12),
                    ),
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.mainColor,
                      size: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
