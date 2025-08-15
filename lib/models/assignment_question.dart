class AssignmentQuestion {
  final String questionsText;
  final List<String> options;
   String? selectedOption;
  AssignmentQuestion({
    required this.questionsText,
    required this.options,
    this.selectedOption,
  });
}
