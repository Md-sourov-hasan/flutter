import 'package:flutter/material.dart';
class HomeView extends StatelessWidget {
  const HomeView({super.key});

@override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  backgroundColor: Color(0xff008268),
  centerTitle: false,

  title: Text("whatsapp",
style: TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.w600,
),
 ),
),


    );
  }

}