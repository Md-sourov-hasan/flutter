import 'package:first_app/home/notes/notes.dart';
import 'package:flutter/material.dart';
// তোমার HomeView এর path

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // উপরের debug banner টা remove হবে
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const NotesView(), // তোমার home.dart এর widget এখানে call করা হলো
    );
  }
}
