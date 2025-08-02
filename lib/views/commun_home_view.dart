import 'package:finverse/common/app_colors.dart';
import 'package:finverse/common/device_utilities.dart';
import 'package:finverse/models/app_title.dart';
import 'package:finverse/widgets/home_searchbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommunHomeView extends GetView {
  const CommunHomeView({super.key});

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
      body: Column(children: [SizedBox(height: 10), HomeSearchbar()]),
    );
  }
}
