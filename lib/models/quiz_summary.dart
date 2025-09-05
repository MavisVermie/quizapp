import 'package:flutter/material.dart';
import 'package:quizapp/quiz.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizSummary extends StatelessWidget{
  QuizSummary(this.ListOfSummary,{super.key});
  List<Map<String,Object>> ListOfSummary;

 
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: SingleChildScrollView(
        child: Column(children: ListOfSummary.map((data){
          bool isCorrect=data['user_answer'] == data['correct_answer'];
          return Row(
            children: [
              
              Padding(
                padding: const EdgeInsets.only(left: 12, right:12),
                child: CircleAvatar(backgroundColor: isCorrect? Colors.greenAccent:Colors.red, child: Text(((data['question_index'] as int) +1).toString(),style:GoogleFonts.lato(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 23)))
              ),
              Expanded(
                child: Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                      Text(data['question'] as String,style:GoogleFonts.lato(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 17) ),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Text(data['user_answer'] as String , style:GoogleFonts.lato(color: isCorrect? Colors.lightGreen:Colors.red,fontSize: 12),),
                          Icon(isCorrect? Icons.check:Icons.close,),
                        ],
                      ),
                      if(data['user_answer']!=data['correct_answer'])
                      Row(
                        children: [
                          Text(data['correct_answer'] as String, style:GoogleFonts.lato(color: Colors.amber,fontSize: 12)),
                          Icon(Icons.check),
                        ],
                      ),
                      //SizedBox(height: 5,)
                    ],
                    ),
                    Padding(padding: EdgeInsetsGeometry.only(bottom: 15))
                  ],
                  
                ),
              )
            ],
          );
        
        }).toList(),
        ),
      ),
    );
  }
}