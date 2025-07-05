import 'package:finverse/controllers/password_controller.dart';
import 'package:finverse/models/app_colors.dart';
import 'package:finverse/models/device_utilities.dart';
import 'package:finverse/models/fonts.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool isPassword;
  final TextEditingController? controller;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.isPassword = false,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final passwordCtrl = Get.find<PasswordController>();

    return Padding(
      padding: EdgeInsets.only(
        left: DeviceUtilities.screenWidth(context) * 0.05,
        right: DeviceUtilities.screenWidth(context) * 0.05,
      ),
      child: isPassword
          ? Obx(
              () => TextFormField(
                controller: controller,
                obscureText: passwordCtrl.ishidden.value,
                decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: Fonts.montserrat.copyWith(
                    color: AppColors.texthint,
                    fontSize: 16,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      passwordCtrl.ishidden.value
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                    onPressed: passwordCtrl.togglevisibility,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: AppColors.highlightColor,
                ),
              ),
            )
          : TextFormField(
              controller: controller,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: Fonts.montserrat.copyWith(
                  color: AppColors.texthint,
                  fontSize: 16,
                ),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                filled: true,
                fillColor: AppColors.highlightColor,
              ),
            ),
    );
  }
}
