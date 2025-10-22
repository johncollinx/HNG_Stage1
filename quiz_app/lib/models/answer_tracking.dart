// lib/models/answer_tracking.dart

class AnswerTracking {
  const AnswerTracking({
    required this.question,
    required this.selectedAnswer,
    required this.correctAnswer,
    this.secondsRemaining = 10, // NEW: Field to store remaining time
  });

  final String question;
  final String selectedAnswer;
  final String correctAnswer;
  final int secondsRemaining; // Stores the time left when the user answered/moved
}
