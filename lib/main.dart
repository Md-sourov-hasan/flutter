import 'package:first_app/home/onboarding/onboarding.dart';
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
      home: const OnboardingView(), // তোমার home.dart এর widget এখানে call করা হলো
    );
  }
}
