import 'package:first_app/expenses_list.dart';
import 'package:first_app/models/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
   return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense>_registerdExpenses = [
    Expense(title: 'FLUTTER COURSE',
     amount: 19.99,
      date: DateTime.now(),
       category: Category.leisure,
       ),
           Expense(title: 'demon slayer',
     amount: 20.00,
      date: DateTime.now(),
       category: Category.work,
       ),
  ];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: Column(
      children: [
        Text('The chart'),
        Expanded(child: ExpensesLis(expenses: _registerdExpenses),
        ),
      ],
    ),
   );
  }
}