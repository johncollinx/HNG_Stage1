import 'package:flutter/material.dart';
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
  
  // Mutable list of questions managed by the state
  List<Question> _currentQuestions = List.from(techQuestions);

  // --- METHODS (unchanged) ---

  void _switchScreen(String screenName) {
    setState(() {
      _activeScreen = screenName;
      if (screenName == 'quiz-screen') {
        _currentQuestionIndex = 0;
        _answersHistory = [];
        _currentSelectedAnswer = null;
      }
    });
  }
  
  // Method to add new questions dynamically
  void _addQuestions(List<Question> newQuestions) {
    setState(() {
      _currentQuestions.addAll(newQuestions);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('${newQuestions.length} question(s) added!')),
      );
    });
  }

  void _selectAnswer(String answer) {
    setState(() {
      _currentSelectedAnswer = answer;
    });
  }

  void _goToNextQuestion() {
    _saveAnswer();

    setState(() {
      _currentQuestionIndex++;
      _currentSelectedAnswer = null;
    });

    if (_currentQuestionIndex >= _currentQuestions.length) {
      _switchScreen('results-screen');
    }
  }
  
  void _goToPreviousQuestion() {
    _saveAnswer();

    setState(() {
      if (_currentQuestionIndex > 0) {
        _currentQuestionIndex--;
        _currentSelectedAnswer = _answersHistory[_currentQuestionIndex].selectedAnswer; 
      }
    });
  }

  void _saveAnswer() {
    final currentQuestion = _currentQuestions[_currentQuestionIndex];
    
    final tracking = AnswerTracking(
      question: currentQuestion.questionText,
      selectedAnswer: _currentSelectedAnswer ?? 'Skipped',
      correctAnswer: currentQuestion.correctAnswer,
    );

    if (_currentQuestionIndex < _answersHistory.length) {
      _answersHistory[_currentQuestionIndex] = tracking;
    } else {
      _answersHistory.add(tracking);
    }
  }

  // --- WIDGET BUILDER (FIXED) ---
  @override
  Widget build(BuildContext context) {
    Widget screenWidget;
    
    if (_activeScreen == 'start-screen') {
      // 💡 FIX: Removed const here because of the non-constant function callbacks
      screenWidget = StartScreen(
        onStartQuiz: () => _switchScreen('quiz-screen'),
        onAddQuestions: _addQuestions, 
      );
    } else if (_activeScreen == 'quiz-screen') {
      // 💡 FIX: Removed const here because the entire widget is dynamically changing
      screenWidget = QuizScreen(
        question: _currentQuestions[_currentQuestionIndex],
        questionIndex: _currentQuestionIndex,
        totalQuestions: _currentQuestions.length,
        selectedAnswer: _currentSelectedAnswer,
        onSelectAnswer: _selectAnswer,
        onNext: _goToNextQuestion,
        onPrevious: _goToPreviousQuestion,
      );
    } else { // 'results-screen'
      // 💡 FIX: Removed const here because the answersHistory is mutable state data
      screenWidget = ResultsScreen(
        answersHistory: _answersHistory,
        onRestart: () => _switchScreen('start-screen'),
        totalQuestions: _currentQuestions.length,
      );
    }

    // Apply the gradient background to the entire body
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
