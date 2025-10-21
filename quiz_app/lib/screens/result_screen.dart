// lib/screens/results_screen.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/answer_tracking.dart';
import '../widgets/summary_item.dart';
import '../widgets/footer.dart'; // 💡 NEW IMPORT

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

  List<Map<String, Object>> get summaryData {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < answersHistory.length; i++) {
      summary.add({
        'question_index': i,
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
    final numCorrectAnswers = answersHistory.where((item) => item.isCorrect).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center, // Removed to allow scroll
          children: [
            // Header Text
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Text(
                'You answered $numCorrectAnswers out of $totalQuestions questions correctly!',
                style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 230, 200, 255),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            // Summary List
            Expanded( // Gives the SingleChildScrollView space to expand
              child: SingleChildScrollView(
                child: Column(
                  children: summaryData.map((data) {
                    return SummaryItem(data);
                  }).toList(),
                ),
              ),
            ),
            
            const SizedBox(height: 30),

            // Restart Button
            TextButton.icon(
              onPressed: onRestart,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.refresh),
              label: const Text('Restart Quiz!'),
            ),
            
            const Footer(), // 💡 FOOTER ADDED HERE
          ],
        ),
      ),
    );
  }
}