import 'package:flutter/material.dart';
import 'package:quizapp/startscreen.dart';
import 'questions.dart';
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
  }

 @override
  Widget build(BuildContext context) {
    Widget Screenn;
    if(activescreen=='start-screen'){
      Screenn=StartScreen(switchScreen);
    }else{
      Screenn=Questions(chooseAnswer);
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