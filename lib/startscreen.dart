import 'package:flutter/material.dart';
import 'quiz.dart';
class StartScreen extends StatelessWidget {
  const StartScreen(this.Screen,{super.key});
  final void Function() Screen;
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color.fromARGB(255, 174, 61, 244),
            const Color.fromARGB(255, 66, 11, 121),
          ],
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/quiz-logo.png', width: 300),
            Padding(padding: EdgeInsetsGeometry.only(top: 30)),
            Text(
              "flutter sucks",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            Padding(padding: EdgeInsetsGeometry.only(top: 20)),
            OutlinedButton.icon(
              onPressed: Screen,
              icon: Icon(Icons.arrow_right_alt),
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              label: Text("Start Quiz"),
            ),
          ],
        ),
      ),
    );
  }
}
