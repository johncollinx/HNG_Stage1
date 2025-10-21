// lib/screens/start_screen.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/question.dart';
import '../widgets/footer.dart';

// Define a type for the optional function
typedef AddQuestionsCallback = void Function(List<Question> newQuestions); 

class StartScreen extends StatelessWidget {
  const StartScreen({
    super.key,
    required this.onStartQuiz,
    this.onAddQuestions, 
  });

  // These properties are accessible via 'widget.' in StatefulWidgets 
  // but directly via 'this.' or their name in StatelessWidgets.
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
            // Image/Logo 
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
              // 💡 FIX: Accessing onStartQuiz property directly (no 'widget.' needed)
              onPressed: onStartQuiz, 
              // 💡 FIX: Removed const before OutlinedButton.styleFrom
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.arrow_right_alt),
              // 💡 FIX: Correctly using const Text constructor
              label: const Text('Start Quiz'), 
            ),

            // Optional: Button to test the new question adding feature
            if (onAddQuestions != null)
              Padding(
                padding: const EdgeInsets.only(top: 10),
                // 💡 FIX: Removed const before TextButton.icon
                child: TextButton.icon(
                  // 💡 FIX: onPressed uses a non-constant function call
                  onPressed: () { 
                    final newQuestions = [
                      const Question(
                        questionText: 'Is Dart better than Java?',
                        options: ['Yes', 'No', 'Maybe', 'Depends on the project'],
                        correctAnswer: 'Depends on the project',
                      ),
                    ];
                    // 💡 FIX: Calling the onAddQuestions property
                    onAddQuestions!(newQuestions); 
                  },
                  icon: const Icon(Icons.add_box, color: Colors.white54),
                  // 💡 FIX: Correctly using const Text constructor
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
}
