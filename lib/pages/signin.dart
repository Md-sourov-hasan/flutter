import 'package:first_app/pages/signup.dart';
import 'package:flutter/material.dart';
class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only( top: 50,),
        height: MediaQuery.of(context).size.height,
         width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(gradient: LinearGradient(colors: [Color(0xffb51037),Color(0xff661c3a),Color(0xff301939)],
        begin: Alignment.topLeft,end: Alignment.topRight
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Text('Signin',
                style: TextStyle(color:Colors.white,fontSize: 40,fontWeight: FontWeight.bold,),
                ),
              ),
              SizedBox(height: 40,),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(top: 50, left:20,  right: 20, ),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Email',
                style: TextStyle(color: Color(0xffb51037),fontSize: 30,fontWeight: FontWeight.bold,),
                ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter Your Email',
                          prefixIcon: Icon(Icons.email_outlined),

                        ),
                
                      ),
                       SizedBox(height: 30,),
                      Text('Password',
                style: TextStyle(color: Color(0xffb51037),fontSize: 30,fontWeight: FontWeight.bold,),
                ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter Your Password',
                          prefixIcon: Icon(Icons.password),

                        ),
                
                      ),
                      SizedBox(height:10 ,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                        Text('Forgot Password',
                style: TextStyle(color: Colors.blue,fontSize: 18,fontWeight: FontWeight.bold,),
                ),
                      ],),
                      SizedBox(height: 50,),
                      Container(
                        height: 60,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [Color(0xffb51037),Color(0xff661c3a),Color(0xff301939)],
        begin: Alignment.topLeft,end: Alignment.topRight
                        ),borderRadius: BorderRadius.circular(30)),
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: Text('Signin',
                                          style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold,),
                                          ),
                        ), 
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                        Column(
                          
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [Text('Dont have a account',
                                          style: TextStyle(color: Colors.black54,fontSize: 20,fontWeight: FontWeight.w500,),
                                          ),
                                          GestureDetector(
                                            onTap:() {
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));
                                            } ,
                                            child: Text('Sign up',
                                            style: TextStyle(color: const Color.fromARGB(255, 11, 84, 145),fontSize: 24,fontWeight: FontWeight.bold,),
                                            ),
                                          ),
                                          ],
                        )
                      ],)
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}