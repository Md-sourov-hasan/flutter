import 'package:first_app/widgets/expenses.dart';
import 'package:flutter/material.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: Colors.blue, // Seed color blue
);

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: kColorScheme,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,         // FORCE blue background
          foregroundColor: Colors.white,        // Text/icon color white
          surfaceTintColor: Colors.transparent, // Remove Material3 overlay
          elevation: 0,                         // Optional: remove shadow
        ),
      ),
      home: Expenses(),
    ),
  );
}
