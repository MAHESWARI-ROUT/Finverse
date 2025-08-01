import 'package:finverse/controllers/course_controller.dart';
import 'package:finverse/controllers/question_controller.dart';
import 'package:finverse/views/authentication_views/login_view.dart';
import 'package:finverse/views/congrats_view.dart';
import 'package:finverse/views/error_view.dart';
import 'package:finverse/views/home_view.dart';
import 'package:finverse/views/profile_view.dart';
import 'package:finverse/views/question_view.dart';
import 'package:finverse/views/refer_view.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
   WidgetsFlutterBinding.ensureInitialized();
  Get.put(QuestionController());
  
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
      initialRoute: '/',
      routes: {
        '/login': (context) => LoginView(),
        '/': (context) => HomeView(),
        '/profile': (context) => ProfileView(),
        '/refer': (context) => ReferView(),
        '/congrats': (context) => CongratsView(),
        '/error': (context) => ErrorView(),
        '/question': (context) => QuestionView(),
      },
    );
  }
}
