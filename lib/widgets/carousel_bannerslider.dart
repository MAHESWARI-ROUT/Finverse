import 'package:carousel_slider/carousel_slider.dart';
import 'package:finverse/common/device_utilities.dart';
import 'package:finverse/controllers/banner_controller.dart';
import 'package:finverse/widgets/circular_container.dart';
import 'package:finverse/widgets/image_banner.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CarouselBannerslider extends StatelessWidget {
  const CarouselBannerslider({super.key, required this.banner});

  final List<String> banner;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BannerController());
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: CarouselSlider(
            options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, _) =>
                  controller.updatePageIndicator(index),
            ),
            items: banner.map((url) => ImageBanner(imageurl: url,height: DeviceUtilities.screenHeight(context)*0.3,)).toList(),
          ),
        ),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < banner.length; i++)
                CircularContainer(
                  radius: 20,
                  margin: const EdgeInsets.only(right: 10),
                  color: controller.carouselIndex.value == i
                      ? Colors.green.shade900
                      : Colors.lightGreen,
                  width: 20,
                  height: 5,
                ),
            ],
          ),
        ),
      ],
    );
  }
}
