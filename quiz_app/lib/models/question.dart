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
  
  // The getShuffledOptions() method is now removed.
}
