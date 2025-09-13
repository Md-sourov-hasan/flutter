import 'package:first_app/widgets/expenses_list/expenses_list.dart';
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
  void _openAddExpnseOverlay(){

  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      backgroundColor:    const Color.fromARGB(255, 165, 154, 113),
      title: Text('expense traker'),
      actions: [
      IconButton(
        onPressed: (){},
         icon: Icon(Icons.add))
      ],
    ),
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