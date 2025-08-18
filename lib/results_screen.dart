
import 'package:flutter/material.dart';
import 'package:first_app/data/questions.dart';
class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.selectedAnswers});
  final List<String> selectedAnswers;

List <Map<String, Object>>getSummaryData(){
final List<Map<String,Object>> Summary =[];
for (var i = 0; i < selectedAnswers.length; i = i+ 1) {
  Summary.add({
    "question_index": questions[i].text,
    "question": questions[i].text,
    "correctAnswer": questions[i].answers[0],
    "user_Answer": selectedAnswers[i],
  });
}


return Summary;

}


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          children:  [
           const Text("your answer x out y question correctly"),
          const SizedBox(height: 30,),
          const Text("list of answer and question..."),
           const SizedBox(height: 30,),
           TextButton(onPressed: () {}, child: const Text("Restart Quiz"))

          ],
        ),
      ),
    );
  }
}