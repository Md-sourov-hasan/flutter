import 'package:first_app/widgets/expenses.dart';
import 'package:flutter/material.dart';

var kColorScheme = ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 96, 59, 181));

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: kColorScheme,
        appBarTheme: AppBarTheme(
          backgroundColor: kColorScheme.primaryContainer, // শুধু background
          foregroundColor: Colors.white, // সবসময় সাদা title + icon
          surfaceTintColor: Colors.transparent, // overlay বন্ধ
        ),
      ),
      home: Expenses(),
    ),
  );
}
