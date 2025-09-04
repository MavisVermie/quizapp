import 'package:flutter/material.dart';
import 'package:quizapp/models/quiz_questions.dart';
import 'answerbutton.dart';
import 'data/questions.dart';
class Questions extends StatefulWidget{
  const Questions({super.key});
  @override
  State<Questions> createState() {
    return _QuestionsState();
  }
}

class _QuestionsState extends State<Questions>{
  QuizQuestion currentQuestion = questions[0];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: AlignmentGeometry.topLeft,
          end:AlignmentGeometry.bottomRight,
          colors: [
            const Color.fromARGB(255, 81, 12, 200),
            const Color.fromARGB(255, 39, 150, 104),
          ],
        ),
      ),
      child:SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(child:Text(currentQuestion.question, style:TextStyle(color: Colors.white,fontSize: 15),textAlign: TextAlign.center,) ,),
            SizedBox(width: 40,),
            ...currentQuestion.answers.map((answerss){
              return AnswerButton(answerss, (){});
            })
          ],
            ),
      ),
    ), 
    );
  }
}