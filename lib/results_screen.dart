import 'package:flutter/material.dart';
import 'package:first_app/data/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.selectedAnswers});

  final List<String> selectedAnswers;

  /// Create a summary list of maps with question data
  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < selectedAnswers.length; i++) {
      summary.add({
        "question_index": i,
        "question": questions[i].text,
        "correctAnswer": questions[i].answers[0],
        "userAnswer": selectedAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData
        .where((data) {
          return data["userAnswer"] == data["correctAnswer"];
        }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!",
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            // You can later replace this with a proper summary widget
            ...summaryData.map((data) {
              return Text(
                'Q${(data["question_index"] as int) + 1}: '
                '${data["question"]}\n'
                'Your answer: ${data["userAnswer"]}\n'
                'Correct answer: ${data["correctAnswer"]}\n',
                textAlign: TextAlign.left,
              );
            }),
            const SizedBox(height: 30),
            TextButton(
              onPressed: () {
                // TODO: Add restart quiz logic
              },
              child: const Text("Restart Quiz"),
            ),
          ],
        ),
      ),
    );
  }
}