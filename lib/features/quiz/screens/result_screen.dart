import 'package:flutter/material.dart';
import 'package:practice/features/quiz/data/questions.dart';
import 'package:practice/features/quiz/screens/summary.dart';

Widget resultScreen(
  List<String> chosenAnswers,
) {
  List<Map<String, Object>> getSummary() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        "question-index": i,
        "question": questions[i].question,
        "correct-answer": questions[i].correctAnswer,
        "user-answer": chosenAnswers[i],
      });
    }

    return summary;
  }

  return Center(
    child: SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            summary(getSummary()),
            ElevatedButton(
              onPressed: () {},
              child: const Text("reset button"),
            ),
          ],
        ),
      ),
    ),
  );
}
