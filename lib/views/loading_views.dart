import 'dart:ui';
import 'package:finverse/common/app_colors.dart';
import 'package:finverse/common/fonts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_view.dart'; // import your home page for background

class LoadingView extends StatefulWidget {
  const LoadingView({super.key});

  @override
  State<LoadingView> createState() => _LoadingViewState();
}

class _LoadingViewState extends State<LoadingView> {
  @override
  void initState() {
    super.initState();
    _simulateLoading();
  }

  Future<void> _simulateLoading() async {
    await Future.delayed(const Duration(seconds: 5));
    Get.offNamed('/');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          const HomeView(),

          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(color: Colors.white.withValues(alpha: 0.2)),
          ),

          Center(
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Curating a perfect course for you.",
                    style: Fonts.montserratBold.copyWith(
                      fontSize: 12,
                      color: AppColors.mainColor,
                    ),
                  ),
                  const SizedBox(height: 20),

                  SizedBox(
                    width: 120,
                    height: 120,
                    child: CircularProgressIndicator(
                      strokeWidth: 12,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      backgroundColor: AppColors.texthint,
                    ),
                  ),
                  const SizedBox(height: 20),

                  Text(
                    "Almost there...",
                    style: Fonts.montserratBold.copyWith(
                      fontSize: 12,
                      color: AppColors.mainColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
