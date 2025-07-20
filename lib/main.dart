import 'package:finverse/controllers/course_category_controller.dart';
import 'package:finverse/controllers/course_controller.dart';
import 'package:finverse/controllers/question_controller.dart';
import 'package:finverse/views/home_view.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
   WidgetsFlutterBinding.ensureInitialized();
  Get.put(QuestionController());
  Get.put(CourseCategoryController());
  Get.put(CourseController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
