import 'package:first_app/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem({super.key,required this.expense});
  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 248, 248, 248),
      child: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(expense.title,style: Theme.of(context).textTheme.titleLarge,),
          SizedBox(height: 20,),
          Row(
            children: [
             Text('\$${expense.amount.toStringAsFixed(2)}'),
             Spacer(),
             Row(children: [
              Icon(CategoryIcons[expense.category]),
              SizedBox(width: 8,),
              Text(expense.formatteddate),
             ],),

            ],
          ),
        ],
      ),
    ),);
    
  }
} 