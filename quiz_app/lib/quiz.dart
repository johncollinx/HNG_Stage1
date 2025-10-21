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
  
  // 💡 Mutable list of questions managed by the state
  List<Question> _currentQuestions = List.from(techQuestions);

  // --- METHODS ---

  void _switchScreen(String screenName) {
    setState(() {
      _activeScreen = screenName;
      if (screenName == 'quiz-screen') {
        _currentQuestionIndex = 0;
        _answersHistory = []; // Reset on new game
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
    // 1. Save the answer before moving
    _saveAnswer();

    // 2. Increment index and reset selection
    setState(() {
      _currentQuestionIndex++;
      _currentSelectedAnswer = null;
    });

    // 3. Check if quiz is over
    if (_currentQuestionIndex >= _currentQuestions.length) {
      _switchScreen('results-screen');
    }
  }
  
  void _goToPreviousQuestion() {
    _saveAnswer();

    setState(() {
      if (_currentQuestionIndex > 0) {
        _currentQuestionIndex--;
        // Reload previous answer, if it exists
        _currentSelectedAnswer = _answersHistory[_currentQuestionIndex].selectedAnswer; 
      }
    });
  }

  void _saveAnswer() {
    final currentQuestion = _currentQuestions[_currentQuestionIndex];
    
    // Create the tracking object
    final tracking = AnswerTracking(
      question: currentQuestion.questionText,
      selectedAnswer: _currentSelectedAnswer ?? 'Skipped', // Default to 'Skipped'
      correctAnswer: currentQuestion.correctAnswer,
    );

    // Update existing or add new
    if (_currentQuestionIndex < _answersHistory.length) {
      _answersHistory[_currentQuestionIndex] = tracking;
    } else {
      _answersHistory.add(tracking);
    }
  }

  // --- WIDGET BUILDER ---
  @override
  Widget build(BuildContext context) {
    Widget screenWidget;
    
    if (_activeScreen == 'start-screen') {
      screenWidget = StartScreen(
        onStartQuiz: () => _switchScreen('quiz-screen'),
        onAddQuestions: _addQuestions, 
      );
    } else if (_activeScreen == 'quiz-screen') {
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
}                'assets/images/quiz-logo.png', 
                width: 300,
              ),
            ),
            const SizedBox(height: 50),
            Text(
              'Learn Flutter the fun way!',
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

            // Optional: Button to test the new question adding feature
            if (onAddQuestions != null)
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextButton.icon(
                  onPressed: () {
                    // Example of new questions to add
                    final newQuestions = [
                      Question(
                        questionText: 'Is Dart better than Java?',
                        options: ['Yes', 'No', 'Maybe', 'Depends on the project'],
                        correctAnswer: 'Depends on the project',
                      ),
                    ];
                    onAddQuestions!(newQuestions);
                  },
                  icon: const Icon(Icons.add_box, color: Colors.white54),
                  label: const Text(
                    'Add 1 Question (Test)',
                    style: TextStyle(color: Colors.white54, fontSize: 12),
                  ),
                ),
              ),
          ],
        ),

        // 3. Spacer to push the main content up
        const Spacer(),

        // 4. Footer at the very bottom
        const Footer(), // 💡 FOOTER ADDED HERE
      ],
    );
  }
}
