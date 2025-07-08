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
      height: 429,
      width: 310,
      padding: EdgeInsets.only(left: 20,right: 20,top: 40,bottom: 40),

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
          SizedBox(height: 10,),
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
                        children: [
                          
                          Icon(Icons.circle_outlined,size: 12,color: AppColors.texthint,),
                          SizedBox(width: 5,),
                          Text(
                            option,
                            style: Fonts.gilroy.copyWith(
                              fontSize: 12,
                              color: AppColors.texthint,
                              
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}
