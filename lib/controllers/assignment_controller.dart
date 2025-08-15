import 'dart:convert';

import 'package:finverse/models/assignment_question.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class AssignmentController extends GetxController {
  RxList<AssignmentQuestion> questions = <AssignmentQuestion>[].obs;
  RxInt currentIndex = 0.obs;

  @override
  void onInit() {
    loadQuestions();
    nextQuestion();
    previousQuestion();
    submitQuestion();
    restart();
    super.onInit();
  }

  Future<void> loadQuestions() async {
  try {
    final String response = await rootBundle.loadString('assets/questions/assignment_question.json');
    print("Loaded JSON: $response");
    final List<dynamic> data = jsonDecode(response);
    questions.value = data.map(
      (q) => AssignmentQuestion(
        questionsText: q['questionText'],
        options: List<String>.from(q['options']),
      ),
    ).toList();
    print("Loaded ${questions.length} questions");
  } catch (e) {
    print("❌ Error loading questions: $e");
  }
}


  void nextQuestion() {
    if (currentIndex.value < questions.length - 1) {
      currentIndex.value++;
    }
  }

  void previousQuestion() {
    if (currentIndex.value > 0) {
      currentIndex.value--;
    }
  }
  void submitQuestion() {
    //evaluation of assignment
    Get.toNamed('/congrats');
    restart();
  }

  void selectOption(int optionIndex) {
    questions[currentIndex.value].selectedOption =
        questions[currentIndex.value].options[optionIndex];
    questions.refresh();
  }
  void restart() {
  currentIndex.value = 0;

  for (var q in questions) {
    q.selectedOption = null;
  }

  update(); }

  int get totalQuestions => questions.length;
}
