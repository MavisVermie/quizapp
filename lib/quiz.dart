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
  var activescreen = 'start-screen';
  void switchScreen(){
    setState(() {
      activescreen='questions-screen';
    });
  }
 @override
  Widget build(BuildContext context) {
    Widget Screenn;
    if(activescreen=='start-screen'){
      Screenn=StartScreen(switchScreen);
    }else{
      Screenn=Questions();
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