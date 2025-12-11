import 'package:flutter/material.dart';

String getTotalScore(List<Map<String, Object>> summaryData) {
  int totalScore = 0;
  for (var data in summaryData) {
    totalScore += data["user-answer"] == data["correct-answer"] ? 1 : 0;
  }
  return totalScore.toString();
}

Widget summary(List<Map<String, Object>> summaryData) {
  return Column(
    children: [
      Text(
        " Total score is : ${getTotalScore(summaryData)}",
        style: TextStyle(color: Colors.white),
      ),
    ],
  );
}
