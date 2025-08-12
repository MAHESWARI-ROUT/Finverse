import 'dart:convert';

import 'package:finverse/models/commun_question.dart';
import 'package:flutter/services.dart';
import 'package:get/state_manager.dart';

class CommunityController extends GetxController {
  RxList<CommunQuestion> questions = <CommunQuestion>[].obs;
  @override
  void onInit() {
    loadQuestions();
    super.onInit();
  }

  Future<void> loadQuestions() async {
  try {
    final String response = await rootBundle.loadString('assets/questions/commun.json');
    final List<dynamic> data = jsonDecode(response);
    questions.value = data.map((q) => CommunQuestion.fromJson(q)).toList();
    print("Loaded ${questions.length} questions");
  } catch (e) {
    print("❌ Error loading questions: $e");
  }
}

}
