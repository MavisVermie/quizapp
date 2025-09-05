import 'package:flutter/material.dart';
class AnswerButton extends StatelessWidget{
  AnswerButton(this.answer,this.func, {super.key});
  String answer;
  void Function() func;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(style:ElevatedButton.styleFrom(foregroundColor: Colors.white,backgroundColor: Colors.green), onPressed: func, child: Text(answer, textAlign: TextAlign.center));
  }
}