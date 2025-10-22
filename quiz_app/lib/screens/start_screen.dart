// lib/screens/start_screen.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/footer.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({
    super.key,
    required this.onStartQuiz,
  });

  final void Function() onStartQuiz;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),

        // 2. Main Screen Content (Centered in the remaining space)
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Image/Logo (Using assets/icon.png as previously decided)
            Opacity(
              opacity: 0.6,
              child: Image.asset(
                'assets/icon.png', 
                width: 300,
              ),
            ),
            const SizedBox(height: 50),
            Text(
              'Learn With Tequest!',
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
          ],
        ),

        const Spacer(),
        
        const Footer(),
      ],
    );
  }
}
