  import 'package:first_app/models/expense.dart';
import 'package:first_app/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesLis extends StatelessWidget {
  const ExpensesLis({super.key,
  required this.expenses,
  });
  final List<Expense>expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) => ExpenseItem(expense: expenses[index],),
    );
  }
}