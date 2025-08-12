class CommunQuestion {
  final String question;
  final String content;
  final String details;

  CommunQuestion({
    required this.question,
    required this.content,
    required this.details,
  });

  factory CommunQuestion.fromJson(Map<String, dynamic> json) {
    return CommunQuestion(
      question: json['question'],
      content: json['content'],
      details: json['details'],
    );
  }
}
