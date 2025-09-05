import 'package:flutter/material.dart';
import 'data/questionsinfo.dart'; //the questions template
import 'models/quiz_summary.dart';
import 'package:google_fonts/google_fonts.dart';
class ResultsScreen extends StatelessWidget{
  ResultsScreen(this.pickedanswers,this.retryQuiz,{super.key});
  List<String> pickedanswers;
  void Function() retryQuiz;
  List<Map<String,Object>> getSummaryOfAll(){
    List<Map<String,Object>> Summary = [];
    for (var i=0;i<pickedanswers.length;i++){
      Summary.add({
        'question_index':i,
        'question':questions[i].question,
        'correct_answer':questions[i].answers[0],
        'user_answer':pickedanswers[i],
      }
    );
    }
     return Summary;
  }
  @override
  Widget build(BuildContext context) {
    var totalQuestions=questions.length;
    var Summary = getSummaryOfAll();
    var correctQuestions= Summary.where((element) {
      return element['user_answer'] == element['correct_answer'];
    },).length;
    return SizedBox(
      width:double.infinity,
      child: Container(
         decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color.fromARGB(255, 174, 61, 244),
            const Color.fromARGB(255, 66, 11, 121),
          ],
        ),
      ),
        //margin: EdgeInsets.all(30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
               Text("You answered $correctQuestions correct number of questions out of $totalQuestions questions correctly!", style:GoogleFonts.lato(color:Colors.white,fontSize: 17,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
              SizedBox(height:20),
              QuizSummary(Summary),
              SizedBox(height:20),
              TextButton.icon(icon:Icon(Icons.repeat_rounded), onPressed: retryQuiz, label: Text("Retry quizz"), style: TextButton.styleFrom(foregroundColor: Colors.white, backgroundColor: Colors.blue),),

            
            ],
          ),
        ),
      ),
    );
    throw UnimplementedError();
  }
}