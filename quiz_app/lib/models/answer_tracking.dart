// lib/models/answer_tracking.dart

class AnswerTracking {
  const AnswerTracking({
    required this.question,
    required this.selectedAnswer,
    required this.correctAnswer,
  });

  final String question;
  final String selectedAnswer;
  final String correctAnswer;

  bool get isCorrect {
    return selectedAnswer == correctAnswer;
  }
}