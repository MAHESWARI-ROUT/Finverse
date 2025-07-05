import 'package:finverse/models/fonts.dart';
import 'package:finverse/views/authentication_views/login_view.dart';
import 'package:finverse/views/authentication_views/preload1_view.dart';
import 'package:finverse/views/authentication_views/preload2_view.dart';
import 'package:finverse/views/authentication_views/signup_view.dart';
import 'package:finverse/views/question_view.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuestionView(),
    );
  }
}
