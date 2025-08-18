import 'package:flutter/material.dart';
import 'package:first_app/answer_button.dart';
import 'package:first_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});
  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
var currentQuestionIndex = 0;
answerQuestion(String selectedAnswers){
  widget.onSelectAnswer("  ");
  //  currentQuestionIndex = currentQuestionIndex + 1;
  // currentQuestionIndex += 1;
  setState(() {
  currentQuestionIndex++;
   });
}

  @override
  Widget build(BuildContext context) {
    final currentQuestion=questions[0];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center, 
         crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
        
        
          Text(currentQuestion.text, style: GoogleFonts.lato(
          color:const Color.fromARGB(255, 138, 123, 190),
          fontSize: 24,
          fontWeight: FontWeight.bold,
         ),
         textAlign: TextAlign.center,
         
         ),
        
        
          const SizedBox(height: 30,),
        
         
          ...currentQuestion. getShuffledAnswers().map((answer) {
            return AnswerButton(answerText: answer, onTap: () {
              answerQuestion(answer);
            },  
            );
          })
          
        ],),
      ),
    );
  }
}

