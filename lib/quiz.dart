import 'package:flutter/material.dart';
import 'package:quizapp/data/questionsinfo.dart';
import 'package:quizapp/startscreen.dart';
import 'questions.dart';
import 'resultsscreen.dart';
class Quiz extends StatefulWidget{
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizWidget();
  }
}

class _QuizWidget extends State<Quiz>{ 
  var activescreen = 'start-screen'; //current screen
  List<String> selectedAnswers = []; //selected answers by user
  void switchScreen(){
    setState(() {
      activescreen='questions-screen';
    });
  }
  void chooseAnswer(String answer){
    selectedAnswers.add(answer);
    if(selectedAnswers.length==questions.length) {
      setState(() {
      activescreen='result-screen';
      //selectedAnswers=[];
    });
    }
  }
  void retryQuiz(){
    setState(() {
      activescreen='start-screen';
      selectedAnswers=[];
    });

  }
 @override
  Widget build(BuildContext context) {
    Widget Screenn=StartScreen(switchScreen);
    if(activescreen=='start-screen'){
      Screenn=StartScreen(switchScreen);
    }else if(activescreen=='questions-screen'){
      Screenn=Questions(chooseAnswer);
    }else if(activescreen=='result-screen'){
      Screenn=ResultsScreen(selectedAnswers,retryQuiz);
    }
    return     
    MaterialApp(debugShowCheckedModeBanner:false,home:Scaffold(
      body:
        Container(
      child: Screenn
    )
    ));
  }
}