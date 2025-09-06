import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('login')
    ),
    body: Padding(padding: EdgeInsets.all(15),
    child: Column(
      children: [
         TextField(
          decoration: InputDecoration(
            hintText: 'User name '
          ),
        ),
        SizedBox(height: 10,),
        TextField(
          decoration: InputDecoration(
            hintText: 'Email'
          ),
        ),
        SizedBox(height: 10,),
        TextField(
          obscureText:true,
          decoration: InputDecoration(
            hintText: 'Password'
          ),
        ),
        SizedBox(
          height: 10,
        ),
         TextField(
          decoration: InputDecoration(
            hintText: 'Confirm Password'
          ),
        ),
        
      ],
    ),
    ),
    
    ); 
  }
}