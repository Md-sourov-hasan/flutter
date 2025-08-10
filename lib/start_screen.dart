import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [Image.asset('assets/image/question.png', width: 300,),
       const SizedBox(height: 80),
      const Text("start quiz", style: TextStyle(
        color: Colors.white,
        fontSize:24,
      )),
     const SizedBox(height: 30,),
     OutlinedButton(onPressed: () {}, 
     style: OutlinedButton.styleFrom(
      foregroundColor: Colors.white,
     ),
     child:const Text("start QUIZ"),)
     
        ],
      ),
    );
  }
}
