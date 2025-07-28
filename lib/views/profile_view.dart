import 'package:finverse/common/device_utilities.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class ProfileView extends GetView {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(gradient: LinearGradient(colors: [])),
          height: DeviceUtilities.screenHeight(context) * 1,
          width: double.infinity,
        ),
      ],
    );
  }
}
