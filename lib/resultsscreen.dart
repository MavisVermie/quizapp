import 'package:flutter/material.dart';
class ResultsScreen extends StatelessWidget{
  ResultsScreen({super.key});
  @override
  Widget build(BuildContext context) {
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
            children: [
              Text("You answered X number of Y questions"),
              SizedBox(height:20),
              Text("here lit of questsions"),
              SizedBox(height:20),
              TextButton(onPressed: (){}, child: Text("Retry quizz")),
            ],
          ),
        ),
      ),
    );
    throw UnimplementedError();
  }
}