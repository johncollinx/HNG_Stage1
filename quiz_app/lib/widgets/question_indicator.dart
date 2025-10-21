// lib/widgets/question_indicator.dart

import 'package:flutter/material.dart';

class QuestionIndicator extends StatelessWidget {
  const QuestionIndicator({
    super.key,
    required this.questionIndex,
    required this.isCorrect,
  });

  final int questionIndex;
  final bool isCorrect;

  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex + 1;

    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrect
            ? const Color.fromARGB(255, 181, 255, 178) // Green for correct
            : const Color.fromARGB(255, 255, 178, 178), // Red for incorrect
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        questionNumber.toString(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 22, 2, 56), // Dark text color
        ),
      ),
    );
  }
}
