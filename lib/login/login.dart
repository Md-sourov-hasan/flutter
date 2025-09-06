import 'package:first_app/home/home.dart';
import 'package:first_app/login/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'Confirm Password'
          ),
        ),
        SizedBox(height: 10,),
        ElevatedButton(onPressed: () => Get.to(()=>HomeView()), child: Text('Login')),
        SizedBox(height: 10,),
        ElevatedButton(onPressed: () => Get.to(() => RegisterView()), child: Text('Register'))
      ],
    ),
    ),
    
    ); 
  }
}