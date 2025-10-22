// lib/models/answer_tracking.dart

class AnswerTracking {
  const AnswerTracking({
    required this.question,
    required this.selectedAnswer,
    required this.correctAnswer,
    this.secondsRemaining = 10,
  });

  final String question;
  final String selectedAnswer;
  final String correctAnswer;
  final int secondsRemaining;

  // 💡 FIX: Add the required getter
  bool get isCorrect {
    return selectedAnswer == correctAnswer;
  }
}
