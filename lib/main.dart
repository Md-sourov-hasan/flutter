import 'package:first_app/widgets/expenses.dart';
import 'package:flutter/material.dart';
var kColorScheme= ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 96, 59, 181));
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: kColorScheme,
        useMaterial3: true,
      ),
      home: Expenses(),
    ),
  );
}
