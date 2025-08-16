import 'package:finverse/controllers/password_controller.dart';
import 'package:finverse/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/app_colors.dart';
import '../../common/device_utilities.dart';
import '../../common/fonts.dart';

class SignupView extends GetView {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(PasswordController());
    final phoneController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final confirmPasswordController = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: true,
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
        child: LayoutBuilder(
          builder: (context, constraint) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraint.maxHeight),
                child: IntrinsicHeight(
                    child:Column(
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
                        CustomTextField(hintText: 'Email', controller: emailController),
                        SizedBox(height: DeviceUtilities.screenHeight(context) * 0.025),
                        CustomTextField(
                          hintText: 'Phone No.',
                          controller: phoneController,
                        ),
                        SizedBox(height: DeviceUtilities.screenHeight(context) * 0.025),
                        CustomTextField(
                          controller: passwordController,
                          hintText: 'Password',
                          isPassword: true,
                        ),
                        SizedBox(height: DeviceUtilities.screenHeight(context) * 0.025),
                        CustomTextField(
                          controller: confirmPasswordController,
                          hintText: 'Confirm Password',
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
                            onPressed: () {
                              Get.toNamed('/loading');                            },
                            child: Text(
                              'Sign Up',
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
                              'Already have an account?',
                              style: Fonts.montserrat.copyWith(
                                fontSize: 16,
                                color: AppColors.textButton,
                              ),
                            ),
                            TextButton(
                              style: TextButton.styleFrom(padding: EdgeInsets.zero),
                              onPressed: () {
                                Get.toNamed('/login');
                              },
                              child: Text(
                                'Login',
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
        ),
      ),
    );
  }
}
