import 'dart:convert';

import 'package:finverse/models/course.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class CourseController extends GetxController {
  var selectedIndex = 0.obs;
  final Map<String, List<Course>> categoryCourse = {
    "investment": [],
    "savings": [],
  };
  var selectedCourse = <Course>[].obs;
  List<Course> get allCourse => [
    ...categoryCourse["investment"]!,
    ...categoryCourse["savings"]!,
  ];
  @override
  void onInit() {
    super.onInit();
    loadCourseFromJson();
  }

  Future<void> loadCourseFromJson() async {
    final String response = await rootBundle.loadString(
      'assets/questions/courses.json',
    );
    print("Loaded JSON: $response");
    final data = jsonDecode(response);
    categoryCourse["investment"] = (data["investment"] as List)
        .map((e) => Course.fromJson(e))
        .toList();
    categoryCourse["savings"] = (data["savings"] as List)
        .map((e) => Course.fromJson(e))
        .toList();
    updateSelectedCourse();
  }

  void setSelectedIndex(int index) {
    selectedIndex.value = index;
    updateSelectedCourse();
  }

  void updateSelectedCourse() {
    switch (selectedIndex.value) {
      case 0: //all
        selectedCourse.value = [
          ...categoryCourse["investment"]!,
          ...categoryCourse["savings"]!,
        ];
        break;
      case 1: // Investment
        selectedCourse.value = categoryCourse["investment"]!;
        break;
      case 2: // Savings
        selectedCourse.value = categoryCourse["savings"]!;
        break;
      case 3: 
        Get.toNamed('/live_view');// or liveCourseList
        break;
      default:
        selectedCourse.clear();
    }
  }
}
