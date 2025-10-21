// lib/models/question.dart

class Question {
  const Question({
    required this.questionText,
    required this.options,
    required this.correctAnswer,
  });

  final String questionText;
  final List<String> options;
  final String correctAnswer;

  // Utility method to shuffle the options for randomization
  List<String> getShuffledOptions() {
    final shuffledList = List.of(options);
    shuffledList.shuffle();
    return shuffledList;
  }
}