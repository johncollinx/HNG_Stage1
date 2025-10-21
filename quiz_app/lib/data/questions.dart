// lib/data/questions.dart

import '../models/question.dart';

const techQuestions = [
  Question(
    questionText: 'What is the primary function of the Flutter framework?',
    options: [
      'Backend server development',
      'Cross-platform mobile app development',
      'Data science and machine learning',
      'Web page styling (CSS)',
    ],
    correctAnswer: 'Cross-platform mobile app development',
  ),
  Question(
    questionText: 'Which programming language is used to write Flutter apps?',
    options: [
      'Kotlin',
      'Java',
      'Dart',
      'Swift',
    ],
    correctAnswer: 'Dart',
  ),
  Question(
    questionText: 'What are the two main types of widgets in Flutter?',
    options: [
      'Functional and Abstract',
      'Input and Output',
      'Stateless and Stateful',
      'Material and Cupertino',
    ],
    correctAnswer: 'Stateless and Stateful',
  ),
  Question(
    questionText: 'In Flutter, what is an immutable description of part of the user interface?',
    options: [
      'A Variable',
      'A Widget',
      'A Class',
      'An Element',
    ],
    correctAnswer: 'A Widget',
  ),
  Question(
    questionText: 'What is the purpose of the `setState()` method?',
    options: [
      'To switch between different screens/pages.',
      'To build a new database query.',
      'To rebuild the widget tree with new data.',
      'To initialize a widget\'s properties.',
    ],
    correctAnswer: 'To rebuild the widget tree with new data.',
  ),
];
