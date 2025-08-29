import 'package:flutter/material.dart';
import 'package:first_app/home/home.dart';  // তোমার HomeView এর path

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // উপরের debug banner টা remove হবে
      home: const HomeView(), // তোমার home.dart এর widget এখানে call করা হলো
    );
  }
}
