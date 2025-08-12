import 'package:finverse/common/app_colors.dart';
import 'package:finverse/common/device_utilities.dart';
import 'package:finverse/common/fonts.dart';
import 'package:finverse/models/app_title.dart';
import 'package:finverse/models/commun_question.dart';
import 'package:finverse/widgets/chat_box.dart';
import 'package:finverse/widgets/home_searchbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FullCommunView extends GetView {
  const FullCommunView({super.key, required this.question});
  final CommunQuestion question;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          DeviceUtilities.screenHeight(context) * 0.15,
        ),
        child: Container(
          width: double.infinity,
          height: DeviceUtilities.screenHeight(context) * 0.15,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [AppColors.display1, AppColors.display2],
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(Icons.arrow_back, color: AppColors.textW),
              ),
              Spacer(),
              AppTitle(),
              Spacer(),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: 70),
            child: Column(
              children: [
                SizedBox(height: 10),
                HomeSearchbar(),

                Padding(
                  padding: EdgeInsets.only(
                    left: DeviceUtilities.screenWidth(context) * 0.05,
                    right: DeviceUtilities.screenWidth(context) * 0.05,
                  ),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            question.question,
                            style: Fonts.gilroySemiBold.copyWith(
                              fontSize: 12,
                              color: AppColors.textBk,
                            ),
                          ),
                          SizedBox(height: 12),
                          Text(
                            question.details,
                            style: Fonts.gilroy.copyWith(
                              fontSize: 10,
                              color: AppColors.blurText,
                            ),
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              SizedBox(width: 10),
                              Text('by Vivek(23/11/2023)'),
                              Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.change_history,
                                  size: 9,
                                  color: AppColors.blurText,
                                ),
                              ),
                              Text('3387'),
                              SizedBox(width: 0),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_drop_down),
                              ),
                              Text('21'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(alignment: Alignment.topLeft, child: Text('Comments')),
              ],
            ),
          ),
          
        ],
      ),
      bottomNavigationBar: ChatBox(),
    );
  }
}
