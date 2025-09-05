import 'package:flutter/material.dart';
import 'package:quizapp/models/quiz_questions.dart';
import 'answerbutton.dart';
import 'data/questionsinfo.dart';
import 'package:google_fonts/google_fonts.dart';
class Questions extends StatefulWidget {
  Questions(this.onSelectAnswer,{super.key});
  Function(String answer) onSelectAnswer;
  @override
  State<Questions> createState() {
    return _QuestionsState();
  }
}

class _QuestionsState extends State<Questions> {
  var questionindex=0;

  void nextQuestion(String answer){
    widget.onSelectAnswer(answer);
    setState(() {
      questionindex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var currentQuestion = questions[questionindex];
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: AlignmentGeometry.topLeft,
          end: AlignmentGeometry.bottomRight,
          colors: [
            const Color.fromARGB(255, 81, 12, 200),
            const Color.fromARGB(255, 39, 150, 104),
          ],
        ),
      ),
      child: SizedBox(
        width: double.infinity,
        child: Container(
          margin: EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Text(
                  currentQuestion.question,
                  style: GoogleFonts.lato(
                    color: Colors.white, 
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 20),
              ...currentQuestion.getShuffledAnswers().map((answerss) {
                return AnswerButton(answerss, (){nextQuestion(answerss);});
              }),
            ],
          ),
        ),
      ),
    );
  }
}
