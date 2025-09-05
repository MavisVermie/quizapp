class QuizQuestion{
  const QuizQuestion(this.question,this.answers);
  final String question;
  final List<String> answers;
    List getShuffledAnswers(){
    final List shuffledlist = List.of(answers);
    shuffledlist.shuffle();
    return shuffledlist;
  }
}