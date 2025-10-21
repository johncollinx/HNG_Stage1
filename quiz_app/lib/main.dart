import 'package:flutter/material.dart';
import 'quiz.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp sets up the basic application structure and theming.
    return const MaterialApp(
      title: 'Flutter Quiz App',
      // We wrap the Quiz widget in a Scaffold for basic structure (like a clean canvas).
      home: Scaffold(
        body: Quiz(),
      ),
    );
  }
}
