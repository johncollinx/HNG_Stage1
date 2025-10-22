// lib/screens/results_screen.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/answer_tracking.dart';
import '../widgets/question_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.answersHistory,
    required this.onRestart,
    required this.totalQuestions,
  });

  final List<AnswerTracking> answersHistory;
  final void Function() onRestart;
  final int totalQuestions;

  // Helper method to create summary data
  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < answersHistory.length; i++) {
      summary.add({
        'question_index': i + 1,
        'question': answersHistory[i].question,
        'correct_answer': answersHistory[i].correctAnswer,
        'user_answer': answersHistory[i].selectedAnswer,
        'is_correct': answersHistory[i].isCorrect, 
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numCorrectAnswers = answersHistory.where((item) => item.isCorrect).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $numCorrectAnswers out of $totalQuestions questions correctly!',
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 230, 200, 253),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            
            // Question Summary Widget
            // 🚀 FIX: Must use 'const' before the widget call.
            const QuestionSummary(summaryData), 

            const SizedBox(height: 30),

            // Restart Button
            TextButton.icon(
              onPressed: onRestart,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.refresh),
              label: const Text('Restart Quiz!'), // Corrected truncated text
            ),
          ],
        ),
      ),
    );
  }
}
