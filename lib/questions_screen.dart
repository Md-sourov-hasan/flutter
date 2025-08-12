import 'package:flutter/material.dart';
import 'package:first_app/start_screen.dart';
import 'package:first_app/questions_screen.dart';
class Quiz extends StatefulWidget{
  const Quiz({super.key});
  @override
  State <Quiz> createState() {
return _QuizState();
  }
}
class _QuizState extends State<Quiz>{
  Widget? activeScreen;


  @override
  void initState() {
    activeScreen =  StartScreen(switchScreen);
    super.initState();
  }

void switchScreen(){
  setState(() {
    activeScreen = const QuestionsScreen();
  });
}
 

  @override
  Widget build(context){ 
    return MaterialApp(
  home: Scaffold(
    body: Container( 
      decoration:BoxDecoration( 
       gradient:  LinearGradient( 
          colors:[
                const Color.fromARGB(255, 45, 20, 158),
               const Color.fromARGB(255, 97, 68, 148)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
        ),

      ),
      child: activeScreen,

    ),
  )
);
  }
}