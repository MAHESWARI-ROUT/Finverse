class Questions {
  final String questionsText;
  final List<String> options;
   String? selectedOption;
  Questions({
    required this.questionsText,
    required this.options,
    this.selectedOption,
  });
}
