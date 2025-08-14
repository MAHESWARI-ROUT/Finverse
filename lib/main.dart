import 'package:finverse/controllers/course_controller.dart';
import 'package:finverse/controllers/question_controller.dart';
import 'package:finverse/views/analytics_view.dart';
import 'package:finverse/views/authentication_views/login_view.dart';
import 'package:finverse/views/commun_home_view.dart';
import 'package:finverse/views/congrats_view.dart';
import 'package:finverse/views/error_view.dart';
import 'package:finverse/views/full_commun_view.dart';
import 'package:finverse/views/home_view.dart';
import 'package:finverse/views/live_view.dart';
import 'package:finverse/views/loading_views.dart';
import 'package:finverse/views/profile_view.dart';
import 'package:finverse/views/question_view.dart';
import 'package:finverse/views/refer_view.dart';
import 'package:finverse/views/video_interface_view.dart';

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
      initialRoute: '/loading',
      getPages: [
        GetPage(name: '/loading', page:() => LoadingView()),
        GetPage(name: '/', page: () => HomeView()),
        GetPage(name: '/login', page: () => LoginView()),
        GetPage(name: '/profile', page: () => ProfileView()),
        GetPage(name: '/refer', page: () => ReferView()),
        GetPage(name: '/congrats', page: () => CongratsView()),
        GetPage(name: '/error', page: () => ErrorView()),
        GetPage(name: '/question', page: () => QuestionView()),
        GetPage(name: '/video', page: () => VideoInterfaceView()),
        GetPage(name: '/commun_home', page: () => CommunHomeView()),
        GetPage(name: '/live_view', page: () => LiveView()),
        GetPage(name: '/analytics_view', page: () => AnalyticsView()),
      ],
    );
  }
}
