import 'package:flutter/material.dart';


class QuestionsSummary extends StatelessWidget {

const QuestionsSummary(this.SummaryData, {super.key});

final List<Map<String, Object>>  SummaryData;



  @override
  Widget build(BuildContext context) {
    return Column(children:SummaryData.map((Data){
      return Row(children: [
        Text(((Data["question"] as int) + 1).toString()),
        Column(children: [
          Text(Data["question"] as String),
          const SizedBox(height: 5),
        
          Text(Data["user_Answer"] as String),
            Text(Data["correct_Answer"] as String),

        ],),
      ],);
    }) .toList(),
    );
  
  }
}