import 'package:get/get.dart';

class BannerController extends GetxController{
  static BannerController get instance => Get.find();

  final carouselIndex = 0.obs;
  void updatePageIndicator(index){
    carouselIndex.value =index;
  }
}