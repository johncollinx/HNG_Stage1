// lib/screens/start_screen.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/question.dart';
import '../widgets/footer.dart';

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
    return Column(
      children: [
        const Spacer(),

        // 2. Main Screen Content (Centered in the remaining space)
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Image/Logo (Must not be const if inside a non-const widget)
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
              // 💡 FIX: Removed const from OutlinedButton.icon
              onPressed: onStartQuiz,
              // 💡 FIX: Removed const from styleFrom
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.arrow_right_alt),
              // 💡 FIX: Changed const Text() to Text()
              label: const Text('Start Quiz'), 
            ),

            // Optional: Button to test the new question adding feature
            if (onAddQuestions != null)
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextButton.icon(
                  // 💡 FIX: Removed const before TextButton.icon
                  // 💡 FIX: The onPressed callback is non-constant
                  onPressed: () { 
                    final newQuestions = [
                      const Question( // Question objects themselves can be const
                        questionText: 'Is Dart better than Java?',
                        options: ['Yes', 'No', 'Maybe', 'Depends on the project'],
                        correctAnswer: 'Depends on the project',
                      ),
                    ];
                    // 💡 FIX: onAddQuestions is a non-constant function call
                    onAddQuestions!(newQuestions); 
                  },
                  icon: const Icon(Icons.add_box, color: Colors.white54),
                  // 💡 FIX: Changed const Text() to Text()
                  label: const Text(
                    'Add 1 Question (Test)',
                    style: TextStyle(color: Colors.white54, fontSize: 12),
                  ),
                ),
              ),
          ],
        ),

        const Spacer(),
        
        const Footer(),
      ],
    );
  }
}                'assets/images/quiz-logo.png', 
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
