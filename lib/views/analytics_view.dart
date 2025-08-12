import 'package:finverse/common/app_colors.dart';
import 'package:finverse/common/fonts.dart';
import 'package:finverse/models/app_title.dart';
import 'package:finverse/widgets/circular_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class AnalyticsView extends StatelessWidget {
  const AnalyticsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppTitle(),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back, color: AppColors.highlightColor),
        ),
      ),
      body: Column(
        children: [
          Text(
            'Analytics',
            style: Fonts.gilroySemiBold.copyWith(
              fontSize: 24,
              color: AppColors.textW,
            ),
          ),
          Row(
            children: [
              CircularContainer(
                radius: 12,
                height: 30,
                width: 30,
                child: Column(
                  children: [
                    Text(
                      '13',
                      style: Fonts.gilroySemiBold.copyWith(
                        fontSize: 50,
                        color: AppColors.textBk,
                      ),
                    ),
                    Text(
                      'Course Completed',
                      style: Fonts.gilroySemiBold.copyWith(
                        fontSize: 10,
                        color: AppColors.textBk,
                      ),
                    ),
                  ],
                ),
              ),
              CircularContainer(
                radius: 12,
                height: 30,
                width: 30,
                child: Column(
                  children: [
                    Text(
                      '26',
                      style: Fonts.gilroySemiBold.copyWith(
                        fontSize: 50,
                        color: AppColors.textBk,
                      ),
                    ),
                    Text(
                      'Assignment Completed',
                      style: Fonts.gilroySemiBold.copyWith(
                        fontSize: 10,
                        color: AppColors.textBk,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          CircularContainer(
            radius: 12,
            height: 30,
            width: 100,
            child: Column(children: [Text('Learning Progress')]),
          ),
          CircularContainer(
            radius: 12,
            height: 30,
            width: 100,
            child: Column(children: [Text('Learning Progress')]),
          ),
        ],
      ),
    );
  }
}
