import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

enum Category { food, travel, leisure, work }

const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.movie,
  Category.work: Icons.work,
};

final _formatter = DateFormat.yMd();

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  });

  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  String get formattedDate {
    return _formatter.format(date);
  }
}

class ExpenseBucket {
  ExpenseBucket.forCategory(this.expenses, this.category);

  final List<Expense> expenses;
  final Category category;

  double get totalExpenses {
    double sum = 0;
    for (final expense in expenses) {
      if (expense.category == category) {
        sum += expense.amount;
      }
    }
    return sum;
  }
}
