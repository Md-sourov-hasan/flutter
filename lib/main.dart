// No Money / No Cash I am The Fan Of Yellow Flash (Minato Namikaje )
import 'package:first_app/pages/onboarding.dart';
import 'package:first_app/pages/signin.dart';
import 'package:first_app/pages/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Onboarding(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page")),
      body: const Center(child: Text("Hello Flutter!")),
    );
  }
}
