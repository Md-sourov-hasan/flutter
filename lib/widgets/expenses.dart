import 'package:first_app/widgets/expenses_list/expenses_list.dart';
import 'package:first_app/models/expense.dart';
import 'package:first_app/widgets/new_expense.dart';
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
    showModalBottomSheet(context: context, builder: (ctx){
      return  NewExpense(onAddExpense: _addExpense);
    });
  }
  void _addExpense(Expense expense){
    setState(() {
      _registerdExpenses.add(expense);
    });
    
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      backgroundColor:    const Color.fromARGB(255, 228, 226, 224),
      title: Text('expense traker'),
      actions: [
      IconButton(
        onPressed: _openAddExpnseOverlay,
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