class QuizQuestion {
  QuizQuestion(this.question, this.options, this.correctAnswer);

  final String question;
  final List<String> options;
  final String correctAnswer;

  List<String> getShuffledAnswers() {
    final shuffledList =  List.of(options);
    shuffledList.shuffle();
    return shuffledList;
  }
}
