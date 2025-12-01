import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
            color: const Color.fromARGB(113, 255, 255, 255),
          ),
          SizedBox(height: 50),
          Text(
            "Learn Flutter The Fun Way",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          SizedBox(height: 50),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: const Color.fromARGB(255, 90, 23, 138),
            ),
            icon: Icon(Icons.arrow_right_alt_rounded),
            label: Text("Start Quiz", style: TextStyle(fontSize: 20)),
          ),
        ],
      ),
    );
  }
}
