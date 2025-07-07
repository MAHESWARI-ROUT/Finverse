import 'dart:convert';

import 'package:finverse/models/questions.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class QuestionController extends GetxController {
  RxList<Questions> questions = <Questions>[].obs;
  RxInt currentIndex = 0.obs;

  @override
  void onInit() {
    loadQuestions();
    super.onInit();
  }

  Future<void> loadQuestions() async {
    final String response = await rootBundle.loadString(
      'assets/questions/questions.json',
    );
    final List<dynamic> data = jsonDecode(response);
    questions.value = data
        .map(
          (q) => Questions(
            questionsText: q['questionText'],
            options: List<String>.from(q['options']),
          ),
        )
        .toList();
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

  void selectOption(int optionIndex) {
    questions[currentIndex.value].selectedOption =
        questions[currentIndex.value].options[optionIndex];
    update(); 
  }

  int get totalQuestions => questions.length;
}
