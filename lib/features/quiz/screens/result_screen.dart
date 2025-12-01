import 'package:flutter/material.dart';
import 'package:practice/features/quiz/data/questions.dart';
import 'package:practice/features/quiz/screens/summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.chosenAnswers, {super.key});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummary() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        "question-index": i,
        "question": questions[i].question,
        "correct-answer": questions[i].options[0],
        "user-answer": chosenAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.infinity,
        child: Container(
          margin: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("heading"),
              Summary(getSummary()),
              ElevatedButton(onPressed: () {}, child: Text("reset button")),
            ],
          ),
        ),
      ),
    );
  }
}
