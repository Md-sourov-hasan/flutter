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
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'FLUTTER COURSE',
      amount: 19.99,
      date: DateTime.now(),
      category: Category.leisure,
    ),
    Expense(
      title: 'Demon Slayer',
      amount: 20.00,
      date: DateTime.now(),
      category: Category.work,
    ),
  ];

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (ctx) {
        return NewExpense(onAddExpense: _addExpense);
      },
    );
  }

  void _addExpense(Expense expense) {
    setState(() {
      _registeredExpenses.add(expense);
    });
  }

  void _removeExpense(Expense expense) {
    setState(() {
      _registeredExpenses.remove(expense);
    });
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(duration: Duration(seconds: 3),content: Text('expense deletes')));
  }

  @override
  Widget build(BuildContext context) {
    Widget mainContent= Center(
      child: Text('No expence found. Start adding some!'),
    );
    if(_registeredExpenses.isEmpty){
      mainContent=ExpensesList(
              expenses: _registeredExpenses,
              onRemoveExpense: _removeExpense,
            );
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 228, 226, 224),
        title: const Text('Expense Tracker'),
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Column(
        children: [
          const Text('The chart'),
          Expanded(
            child: mainContent,
          ),
        ],
      ),
    );
  }
}
