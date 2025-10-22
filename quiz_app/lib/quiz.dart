import 'package:flutter/material.dart';
import 'dart:async'; // Import for Timer

import 'screens/start_screen.dart';
import 'screens/quiz_screen.dart';
import 'screens/results_screen.dart';
import 'data/questions.dart';
import 'models/question.dart';
import 'models/answer_tracking.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  // --- STATE VARIABLES ---
  String _activeScreen = 'start-screen';
  int _currentQuestionIndex = 0;
  List<AnswerTracking> _answersHistory = [];
  String? _currentSelectedAnswer;
  List<Question> _currentQuestions = List.from(techQuestions);
  
  // --- TIMER VARIABLES ---
  Timer? _timer;
  int _secondsRemaining = 10;
  final int _maxSeconds = 10;

  // --- METHODS ---

  void _switchScreen(String screenName) {
    setState(() {
      _activeScreen = screenName;
      if (screenName == 'quiz-screen') {
        _currentQuestionIndex = 0;
        _answersHistory = []; 
        _currentSelectedAnswer = null;
        _startTimer(); // Start timer when quiz begins
      } else {
        _stopTimer();
      }
    });
  }

  void _selectAnswer(String answer) {
    setState(() {
      _currentSelectedAnswer = answer;
    });
  }

  void _goToNextQuestion({bool timedOut = false}) {
    // Stop the current timer
    _stopTimer();
    
    // Save the current state/answer
    _saveAnswer(timedOut: timedOut);

    // Increment index and reset selection
    setState(() {
      _currentQuestionIndex++;
      _currentSelectedAnswer = null;
    });

    // Check if quiz is over
    if (_currentQuestionIndex >= _currentQuestions.length) {
      _switchScreen('results-screen');
    } else {
      // Start timer for the next question
      _startTimer();
    }
  }
  
  void _goToPreviousQuestion() {
    _stopTimer();
    _saveAnswer(); // Save current answer before going back

    setState(() {
      if (_currentQuestionIndex > 0) {
        _currentQuestionIndex--;
        // Reload previous answer, if it exists
        _currentSelectedAnswer = _answersHistory[_currentQuestionIndex].selectedAnswer; 
      }
    });
    _startTimer(); // Restart timer for the previous question
  }

  void _saveAnswer({bool timedOut = false}) {
    final currentQuestion = _currentQuestions[_currentQuestionIndex];
    
    // Determine the answer string
    String answer = 'Skipped';
    if (_currentSelectedAnswer != null) {
      answer = _currentSelectedAnswer!;
    } else if (timedOut) {
      answer = 'Timed Out'; // Specific string for timed-out
    }

    final tracking = AnswerTracking(
      question: currentQuestion.questionText,
      selectedAnswer: answer,
      correctAnswer: currentQuestion.correctAnswer,
    );

    // Update existing or add new
    if (_currentQuestionIndex < _answersHistory.length) {
      _answersHistory[_currentQuestionIndex] = tracking;
    } else {
      _answersHistory.add(tracking);
    }
  }

  // --- TIMER MANAGEMENT ---

  void _startTimer() {
    _secondsRemaining = _maxSeconds;
    _stopTimer(); // Ensure any existing timer is cancelled
    
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_secondsRemaining > 0) {
        setState(() {
          _secondsRemaining--;
        });
      } else {
        // Time is up, move to the next question
        _goToNextQuestion(timedOut: true);
      }
    });
  }

  void _stopTimer() {
    _timer?.cancel();
  }

  @override
  void dispose() {
    _stopTimer();
    super.dispose();
  }

  // --- WIDGET BUILDER (FIXED) ---
  @override
  Widget build(BuildContext context) {
    Widget screenWidget;
    
    if (_activeScreen == 'start-screen') {
      screenWidget = StartScreen(
        onStartQuiz: () => _switchScreen('quiz-screen'),
      );
    } else if (_activeScreen == 'quiz-screen') {
      // 💡 FIX: All properties are now correctly accessible and passed
      screenWidget = QuizScreen(
        question: _currentQuestions[_currentQuestionIndex],
        questionIndex: _currentQuestionIndex,
        totalQuestions: _currentQuestions.length,
        selectedAnswer: _currentSelectedAnswer,
        secondsRemaining: _secondsRemaining, // 💡 REQUIRED PARAMETER ADDED
        onSelectAnswer: _selectAnswer,
        onNext: _goToNextQuestion,
        onPrevious: _goToPreviousQuestion,
      );
    } else { // 'results-screen'
      // 💡 FIX: All properties and methods are now correctly accessible
      screenWidget = ResultsScreen(
        answersHistory: _answersHistory,
        onRestart: () => _switchScreen('start-screen'), // 💡 FIX: Method now accessible
        totalQuestions: _currentQuestions.length,
      );
    }

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 78, 13, 151),
            Color.fromARGB(255, 107, 15, 168),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: screenWidget,
    );
  }
}
