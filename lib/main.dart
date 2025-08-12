import 'package:flutter/material.dart';
import 'package:first_app/start_screen.dart';
void main(){
  runApp(
MaterialApp(
  home: Scaffold(
    body: Container( 
      decoration:BoxDecoration( 
       gradient:  LinearGradient( 
          colors:[
                const Color.fromARGB(255, 45, 20, 158),
               const Color.fromARGB(255, 97, 68, 148)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
        ),

      ),
      child: const StartScreen( ),

    ),
  )
)
  );
}