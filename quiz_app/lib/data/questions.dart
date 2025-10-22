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
  

  Question(
    questionText: 'Which widget allows for scrolling through a single column of content?',
    options: [
      'Row',
      'Column',
      'Container',
      'SingleChildScrollView',
    ],
    correctAnswer: 'SingleChildScrollView',
  ),
  Question(
    questionText: 'The concept of "hot reload" in Flutter is primarily used for:',
    options: [
      'Database connection',
      'Building release APKs',
      'Faster development iteration',
      'Code optimization',
    ],
    correctAnswer: 'Faster development iteration',
  ),
  Question(
    questionText: 'What is the root of the widget tree in a typical Flutter application?',
    options: [
      'Scaffold',
      'main() function',
      'runApp()',
      'MaterialApp or CupertinoApp',
    ],
    correctAnswer: 'MaterialApp or CupertinoApp',
  ),
  Question(
    questionText: 'Which property is used to align widgets horizontally in a Row?',
    options: [
      'MainAxisAlignment',
      'CrossAxisAlignment',
      'TextDirection',
      'VerticalDirection',
    ],
    correctAnswer: 'MainAxisAlignment',
  ),
  Question(
    questionText: 'What does the abbreviation "API" stand for in programming?',
    options: [
      'Application Program Interface',
      'Advanced Process Instruction',
      'Automated Protocol Index',
      'Application Performance Indicator',
    ],
    correctAnswer: 'Application Program Interface',
  ) 
];
