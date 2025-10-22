// lib/screens/quiz_screen.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/question.dart';
import '../widgets/answer_button.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({
    super.key,
    required this.question,
    required this.questionIndex,
    required this.totalQuestions,
    this.selectedAnswer,
    required this.secondsRemaining,
    required this.onSelectAnswer,
    required this.onNext,
    required this.onPrevious,
  });

  final Question question;
  final int questionIndex;
  final int totalQuestions;
  final String? selectedAnswer;
  final int secondsRemaining;
  final void Function(String answer) onSelectAnswer;
  final void Function({bool timedOut}) onNext; 
  final void Function() onPrevious;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Timer and Question Counter Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Question ${questionIndex + 1} of $totalQuestions',
                  style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 201, 153, 251),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Time: $secondsRemaining s',
                  style: GoogleFonts.lato(
                    color: secondsRemaining <= 5 
                        ? Colors.redAccent 
                        : Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Divider(color: Colors.white24, height: 25),

            // Question Text
            Text(
              question.questionText,
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),

            // Answer Buttons
            ...question.getShuffledOptions().map((answer) {
              return AnswerButton(
                answerText: answer,
                isSelected: selectedAnswer == answer,
                onTap: () {
                  onSelectAnswer(answer);
                },
              );
            }),
            
            const SizedBox(height: 40),

            // Navigation Buttons
            // This Row must NOT be const
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Previous Button
                ElevatedButton.icon(
                  onPressed: questionIndex > 0 ? onPrevious : null,
                  icon: const Icon(Icons.arrow_back),
                  label: const Text('Previous'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 107, 15, 168),
                    foregroundColor: Colors.white,
                  ),
                ),

                // Next Button (Only active if an answer is selected)
                ElevatedButton.icon(
                  onPressed: selectedAnswer != null ? () => onNext(timedOut: false) : null,
                  icon: const Icon(Icons.arrow_forward),
                  label: Text(
                    // These variables are now correctly accessible
                    questionIndex + 1 == totalQuestions ? 'FINISH' : 'Next',
                  ),
                  style: ElevatedButton.styleFrom(
                    // This variable is now correctly accessible
                    backgroundColor: selectedAnswer != null 
                        ? const Color.fromARGB(255, 137, 24, 255)
                        : const Color.fromARGB(255, 90, 90, 90),
                    foregroundColor: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
// 💡 NOTE: Everything after this line was the duplicate code block and has been removed.
