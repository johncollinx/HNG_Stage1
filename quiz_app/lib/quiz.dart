// lib/quiz.dart

import 'package:flutter/material.dart';
import 'dart:async'; 

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
  
  // Stores the STATICALLY shuffled options for the current question
  List<String> _shuffledOptions = []; 
  
  // --- TIMER VARIABLES ---
  Timer? _timer;
  int _secondsRemaining = 10;
  final int _maxSeconds = 10; 

  // --- HELPER METHODS ---

  void _shuffleAndSetOptions(int index) {
    if (index >= 0 && index < _currentQuestions.length) {
      final optionsToShuffle = List<String>.of(_currentQuestions[index].options);
      optionsToShuffle.shuffle();
      setState(() {
        _shuffledOptions = optionsToShuffle;
      });
    }
  }

  void _saveAnswer({bool timedOut = false}) {
    if (_currentQuestionIndex >= _currentQuestions.length) return; 

    final currentQuestion = _currentQuestions[_currentQuestionIndex];
    
    String answer = 'Skipped';
    if (_currentSelectedAnswer != null) {
      answer = _currentSelectedAnswer!;
    } else if (timedOut) {
      answer = 'Timed Out';
    }
    
    // CRITICAL: Save the current timer state
    final tracking = AnswerTracking(
      question: currentQuestion.questionText,
      selectedAnswer: answer,
      correctAnswer: currentQuestion.correctAnswer,
      secondsRemaining: _secondsRemaining, // SAVE CURRENT TIME
    );

    if (_currentQuestionIndex < _answersHistory.length) {
      _answersHistory[_currentQuestionIndex] = tracking;
    } else {
      _answersHistory.add(tracking);
    }
  }

  // --- FLOW CONTROL METHODS ---

  void _switchScreen(String screenName) {
    setState(() {
      _activeScreen = screenName;
      if (screenName == 'quiz-screen') {
        _currentQuestionIndex = 0;
        _answersHistory = []; 
        _currentSelectedAnswer = null;
        _shuffleAndSetOptions(_currentQuestionIndex);
        // Start from max time for the first question
        _startTimer(time: _maxSeconds); 
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
    _stopTimer();
    _saveAnswer(timedOut: timedOut);

    setState(() {
      _currentQuestionIndex++;
      _currentSelectedAnswer = null;
    });

    if (_currentQuestionIndex >= _currentQuestions.length) {
      _switchScreen('results-screen');
    } else {
      _shuffleAndSetOptions(_currentQuestionIndex);
      // Start from max time for the new question
      _startTimer(time: _maxSeconds); 
    }
  }
  
  void _goToPreviousQuestion() {
    _saveAnswer(); // Save current selection and remaining time
    _stopTimer();

    if (_currentQuestionIndex > 0) {
      final previousIndex = _currentQuestionIndex - 1;
      final previousAnswer = _answersHistory[previousIndex];

      setState(() {
        _currentQuestionIndex = previousIndex;
        // Restore previous answer
        _currentSelectedAnswer = previousAnswer.selectedAnswer; 
      });

      _shuffleAndSetOptions(_currentQuestionIndex);
      
      // CRITICAL: Restart the timer from the RESTORED value
      _startTimer(time: previousAnswer.secondsRemaining); 
    }
  }

  // --- TIMER MANAGEMENT ---

  // MODIFIED: Accepts the starting time for stable state
  void _startTimer({required int time}) {
    // If time has expired, just set the remaining time to 0 and don't start the timer
    if (time <= 0) {
      setState(() {
         _secondsRemaining = 0;
      });
      _stopTimer();
      return; 
    }

    _secondsRemaining = time; // Start from the provided time
    _stopTimer();
    
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_secondsRemaining > 0) {
        setState(() {
          _secondsRemaining--;
        });
      } else {
        // Time is up, auto-advance
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

  // --- WIDGET BUILDER ---
  @override
  Widget build(BuildContext context) {
    Widget screenWidget;
    
    if (_activeScreen == 'start-screen') {
      screenWidget = StartScreen(
        onStartQuiz: () => _switchScreen('quiz-screen'),
      );
    } else if (_activeScreen == 'quiz-screen') {
      screenWidget = QuizScreen(
        question: _currentQuestions[_currentQuestionIndex],
        questionIndex: _currentQuestionIndex,
        totalQuestions: _currentQuestions.length,
        selectedAnswer: _currentSelectedAnswer,
        secondsRemaining: _secondsRemaining, 
        optionsToDisplay: _shuffledOptions, 
        onSelectAnswer: _selectAnswer,
        onNext: _goToNextQuestion,
        onPrevious: _goToPreviousQuestion,
      );
    } else { // 'results-screen'
      screenWidget = ResultsScreen(
        answersHistory: _answersHistory,
        onRestart: () => _switchScreen('start-screen'),
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
