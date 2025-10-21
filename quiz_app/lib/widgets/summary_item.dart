// lib/widgets/summary_item.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'question_indicator.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrect = itemData['is_correct'] as bool;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Question Index Indicator (The colored circle)
          QuestionIndicator(
            questionIndex: itemData['question_index'] as int,
            isCorrect: isCorrect,
          ),
          const SizedBox(width: 20),
          
          // Question Text and Answers
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemData['question'] as String,
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 5),
                
                // User Answer
                Text(
                  itemData['user_answer'] as String,
                  style: GoogleFonts.lato(
                    color: isCorrect 
                      ? const Color.fromARGB(255, 178, 255, 171) // Light Green for correct
                      : const Color.fromARGB(255, 255, 171, 185), // Light Red for incorrect
                    fontSize: 14,
                  ),
                ),
                
                // Correct Answer
                Text(
                  itemData['correct_answer'] as String,
                  style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 178, 255, 171), // Light Green
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}