import 'package:flutter/material.dart';
class StartScreen extends StatelessWidget{
  const StartScreen({super.key});
@override
Widget build(context){
  return Center(
child:Column(
  mainAxisSize:MainAxisSize.min,
  children:[Image.asset("assets/image/question.png", width: 300,color:const Color.fromARGB(255, 238, 236, 236),),
  const SizedBox(height:80),
  const Text("start quiz",style: TextStyle(
    color:Colors.white,
    fontSize:24,
  )),
  const SizedBox(height:30,),
  OutlinedButton.icon(onPressed:() {},
  style:OutlinedButton.styleFrom(
    foregroundColor:Colors.white,
  ),
  icon:Icon(Icons.arrow_right_alt),
  label:const Text("start quiz"),

  )
  ],

),
  );
} 
}