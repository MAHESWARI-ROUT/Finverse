import 'package:finverse/controllers/password_controller.dart';

import 'package:finverse/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/app_colors.dart';
import '../../common/device_utilities.dart';
import '../../common/fonts.dart';

class LoginView extends GetView {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(PasswordController());
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return Scaffold(
      body: Container(
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
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Fin',
                      style: Fonts.montserratExtraBold.copyWith(
                        color: AppColors.textW,
                        fontSize: 36,
                      ),
                    ),
                    TextSpan(
                      text: 'Verse',
                      style: Fonts.montserratLight.copyWith(
                        color: AppColors.textW,
                        fontSize: 36,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: DeviceUtilities.screenHeight(context) * 0.05),
              CustomTextField(
                hintText: 'Email/Phone.no',
                controller: emailController,
              ),
              SizedBox(height: DeviceUtilities.screenHeight(context) * 0.025),
              CustomTextField(
                controller: passwordController,
                hintText: 'Password',
                isPassword: true,
              ),
              SizedBox(height: DeviceUtilities.screenHeight(context) * 0.025),
              Container(
                padding: EdgeInsets.only(
                  left: DeviceUtilities.screenWidth(context) * 0.05,
                  right: DeviceUtilities.screenWidth(context) * 0.05,
                ),
                height: DeviceUtilities.screenHeight(context) * 0.07,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.mainColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {Get.toNamed('/loading');}, 
                  child: Text(
                    'Login',
                    style: Fonts.montserratExtraBold.copyWith(
                      fontSize: 16,
                      color: AppColors.textW,
                    ),
                  ),
                ),
              ),
              SizedBox(height: DeviceUtilities.screenHeight(context) * 0.005),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'click here to',
                    style: Fonts.montserrat.copyWith(
                      fontSize: 16,
                      color: AppColors.textButton,
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(padding: EdgeInsets.zero),
                    onPressed: () {
                      Get.toNamed('/signup');
                    },
                    child: Text(
                      'Signup',
                      style: Fonts.montserratExtraBold.copyWith(
                        fontSize: 16,
                        color: AppColors.textButton,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
