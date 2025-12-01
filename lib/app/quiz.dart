import 'package:flutter/material.dart';
import 'package:practice/features/quiz/data/questions.dart';
import 'package:practice/features/quiz/screens/questions_screen.dart';
import 'package:practice/features/quiz/screens/result_screen.dart';
import 'package:practice/features/quiz/screens/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = "start-screen";

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = "result-screen";
        // selectedAnswers = [];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget currentScreen = StartScreen(switchScreen);

    if (activeScreen == "question-screen") {
      currentScreen = QuestionsScreen(chooseAnswer);
    }

    if (activeScreen == 'result-screen') {
      currentScreen = ResultScreen(selectedAnswers);
      selectedAnswers = [];
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 60, 16, 136),
                const Color.fromARGB(255, 92, 14, 148),
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
          ),
          child: currentScreen,
        ),
      ),
    );
  }
}
