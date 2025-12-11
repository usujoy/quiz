import 'package:flutter/material.dart';
import 'package:practice/features/quiz/data/questions.dart';
import 'package:practice/features/quiz/screens/questions_screen.dart';
import 'package:practice/features/quiz/screens/result_screen.dart';
import 'package:practice/features/quiz/screens/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  String activeScreen = "start-screen";

  void switchScreen() {
    setState(() {
      activeScreen = "question-screen";
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = "result-screen";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget currentScreen = StartScreen(switchScreen);

    if (activeScreen == "question-screen") {
      currentScreen = QuestionsScreen(chooseAnswer);
    } else if (activeScreen == "result-screen") {
      currentScreen = resultScreen(selectedAnswers);
      selectedAnswers = [];
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 140, 84, 235),
                Color.fromARGB(255, 180, 143, 206),
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
