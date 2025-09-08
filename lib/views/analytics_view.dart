import 'package:finverse/common/app_colors.dart';
import 'package:finverse/common/device_utilities.dart';
import 'package:finverse/common/fonts.dart';
import 'package:finverse/widgets/app_title.dart';
import 'package:finverse/widgets/circular_container.dart';
import 'package:finverse/widgets/completion_chart.dart';
import 'package:finverse/widgets/learning_progress_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class AnalyticsView extends StatelessWidget {
  const AnalyticsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppTitle(textColor: AppColors.blueTitle),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back, color: AppColors.blueTitle),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left:  20.0,right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Analytics',
                  style: Fonts.gilroySemiBold.copyWith(
                    fontSize: 24,
                    color: AppColors.textBk,
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 155,
                    child: Card(
                      elevation: 0,
                      child: CircularContainer(
                        radius: 12,
                        height: 130,
                        width: 130,
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
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(
                    width: 155,
                    child: Card(
                      elevation: 0,
                      child: CircularContainer(
                        radius: 12,
                        height: 130,
                        width: 130,
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
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Learning Progress',
                          style: Fonts.gilroySemiBold.copyWith(
                            fontSize: 15,
                            color: AppColors.textBk,
                          ),
                        ),
                      ),
                      SizedBox(height: 200, child: LearningProgressChart()),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircularContainer(
                            radius: 0,
                            color: AppColors.barColor1,
                            height: 8,
                            width: 8,
                          ),
                          SizedBox(width: 10,),
                          Text(
                            'Courses',
                            style: Fonts.gilroySemiBold.copyWith(
                              fontSize: 10,
                              color: AppColors.textBk,
                            ),
                            
                          ),
                          SizedBox(width: 20,),
                          CircularContainer(
                            radius: 0,
                            color: AppColors.barColor2,
                            height: 8,
                            width: 8,
                          ),
                          SizedBox(width: 10,),
                          Text(
                            'Tests',
                            style: Fonts.gilroySemiBold.copyWith(
                              fontSize: 10,
                              color: AppColors.textBk,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Completion Chart',
                          style: Fonts.gilroySemiBold.copyWith(
                            fontSize: 15,
                            color: AppColors.textBk,
                          ),
                        ),
                      ),
                      
                      Row(
                        children: [
                          SizedBox(height: 200, child: CompletionChart()),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  CircularContainer(
                                    radius: 0,
                                    color: AppColors.barColor1,
                                    height: 8,
                                    width: 8,
                                  ),
                                  SizedBox(width: 10,),
                              Text(
                                'Courses',
                                style: Fonts.gilroySemiBold.copyWith(
                                  fontSize: 10,
                                  color: AppColors.textBk,
                                ),
                                
                              ),
                                ],
                              ),
                              
                              
                              Row(
                                children: [
                                  CircularContainer(
                                    radius: 0,
                                    color: AppColors.barColor2,
                                    height: 8,
                                    width: 8,
                                  ),
                                  SizedBox(width: 10,),
                              Text(
                                'Tests',
                                style: Fonts.gilroySemiBold.copyWith(
                                  fontSize: 10,
                                  color: AppColors.textBk,
                                ),
                              ),
                                ],
                              ),
                              
                            ],),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
