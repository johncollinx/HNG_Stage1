// lib/widgets/question_summary.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              final isCorrect = data['is_correct'] as bool;
              
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Question Index Circle (Visual Feedback)
                    Container(
                      width: 30,
                      height: 30,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: isCorrect
                            ? const Color.fromARGB(255, 150, 198, 241) // Correct color
                            : const Color.fromARGB(255, 249, 133, 133), // Incorrect color
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Text(
                        // Index is 1-based, so convert to String
                        (data['question_index'] as int).toString(),
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 22, 2, 56),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),

                    // Question and Answers Details
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Question Text
                          Text(
                            data['question'] as String,
                            style: GoogleFonts.lato(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),

                          // User Answer (Incorrect/Skipped answers are red)
                          Text(
                            data['user_answer'] as String,
                            style: GoogleFonts.lato(
                              color: isCorrect
                                  ? const Color.fromARGB(255, 181, 254, 246)
                                  : const Color.fromARGB(255, 255, 138, 138),
                            ),
                          ),

                          // Correct Answer (Always shown in light green/purple)
                          Text(
                            data['correct_answer'] as String,
                            style: GoogleFonts.lato(
                              color: const Color.fromARGB(255, 203, 199, 252),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
