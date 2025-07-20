
import 'package:finverse/controllers/course_controller.dart';
import 'package:finverse/models/course.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CourseController>();
    return Obx(() {
      final List<Course> courses = controller.selectedCourse;
      return ListView.builder(
        shrinkWrap: true,
        itemCount: courses.length,
        itemBuilder: (context, index) {
          final course = courses[index];
          return ListTile(
            leading: Image.asset(course.preview,width: 30,height: 30,),
            title: Text(course.title),
            subtitle: Text(course.description),
            trailing: Text(course.duration),
          );
        },
      );
    });
  }
}
