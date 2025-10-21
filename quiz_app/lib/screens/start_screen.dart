// lib/screens/start_screen.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/question.dart';
import '../widgets/footer.dart'; // 💡 NEW IMPORT

// Define a type for the optional function
typedef AddQuestionsCallback = void Function(List<Question> newQuestions); 

class StartScreen extends StatelessWidget {
  const StartScreen({
    super.key,
    required this.onStartQuiz,
    this.onAddQuestions, 
  });

  final void Function() onStartQuiz;
  final AddQuestionsCallback? onAddQuestions;

  @override
  Widget build(BuildContext context) {
    // 💡 Rewritten to use Column/Spacer for bottom-anchored Footer
    return Column(
      children: [
        // 1. Spacer to push the main content down
        const Spacer(),

        // 2. Main Screen Content (Centered in the remaining space)
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Image/Logo (Ensure you have 'assets/images/quiz-logo.png')
            Opacity(
              opacity: 0.6,
              child: Image.asset(
                'assets/images/quiz-logo.png', 
                width: 300,
              ),
            ),
            const SizedBox(height: 50),
            Text(
              'Learn Flutter the fun way!',
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            
            // Main Start Button
            OutlinedButton.icon(
              onPressed: onStartQuiz,
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text('Start Quiz'),
            ),

            // Optional: Button to test the new question adding feature
            if (onAddQuestions != null)
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextButton.icon(
                  onPressed: () {
                    // Example of new questions to add
                    final newQuestions = [
                      Question(
                        questionText: 'Is Dart better than Java?',
                        options: ['Yes', 'No', 'Maybe', 'Depends on the project'],
                        correctAnswer: 'Depends on the project',
                      ),
                    ];
                    onAddQuestions!(newQuestions);
                  },
                  icon: const Icon(Icons.add_box, color: Colors.white54),
                  label: const Text(
                    'Add 1 Question (Test)',
                    style: TextStyle(color: Colors.white54, fontSize: 12),
                  ),
                ),
              ),
          ],
        ),

        // 3. Spacer to push the main content up
        const Spacer(),

        // 4. Footer at the very bottom
        const Footer(), // 💡 FOOTER ADDED HERE
      ],
    );
  }
}