import 'package:finverse/common/app_colors.dart';
import 'package:finverse/common/fonts.dart';
import 'package:flutter/material.dart';

class QuestionContainer extends StatelessWidget {
  final String question;
  final List<String> options;
  final String? selectedOption;
  //final void Function(String) onOptionSelected;
  //final VoidCallback onNext;
  //final VoidCallback onPrev;
  const QuestionContainer({
    super.key,
    required this.question,
    required this.options,
    this.selectedOption,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            question,
            style: Fonts.gilroySemiBold.copyWith(
              color: AppColors.textBk,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 5),
          ...options.map((options) {
            return Padding(padding: EdgeInsetsGeometry.all(10));
          }),
        ],
      ),
    );
  }
}
