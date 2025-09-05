import 'package:first_app/pages/signin.dart';
import 'package:first_app/pages/signup.dart';
import 'package:flutter/material.dart';
class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 0.0),
        height: MediaQuery.of(context).size.height,
         width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(gradient: LinearGradient(colors: [Color(0xffb51037),Color(0xff661c3a),Color(0xff301939)],
        begin: Alignment.topLeft,end: Alignment.topRight
        )),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Image.network("https://thumbs.dreamstime.com/b/maple-leaf-isolated-transparent-background-bright-red-autumn-realistic-leaf-vector-illustration-eps-maple-leaf-isolated-126072815.jpg",
        
          height: 90,width: 90,fit: BoxFit.cover,
          ),
          Text('KONOHA',
          style: TextStyle(color: Colors.white,fontSize: 25, ),
          ),
          SizedBox(height: 80,),
           Text('Wellcome',
          style: TextStyle(color: Colors.white,fontSize: 38,fontWeight: FontWeight.w700 ),
          ),
          SizedBox(height: 40,),
             GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Signin()));
              },
            child: Container(
              padding: EdgeInsets.only(top: 12,bottom: 12,),
              margin: EdgeInsets.only(left: 30,right: 30,),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(border: Border.all(color: Colors.white,width:2, ),borderRadius: BorderRadius.circular(30) ),
            
              child:  Center(
                child: Text('Sing in',
                          style: TextStyle(color: Colors.white10,fontSize: 25, fontWeight: FontWeight.w500),
                          ),
              ),
                   
            ),
          ),
          SizedBox(height: 30,),
           GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));
            },
             child: Container(
              padding: EdgeInsets.only(top: 12,bottom: 12,),
              margin: EdgeInsets.only(left: 30,right: 30,),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.white ,borderRadius: BorderRadius.circular(30) ),
             
              child:  Center(
                child: Text('Sing up',
                          style: TextStyle(color: Colors.black,fontSize: 25, fontWeight: FontWeight.w500),
                          ),
              ),
                    
                       ),
           ),
          SizedBox(height: MediaQuery.of(context).size.height/8,),
           Text('Loging with ',
                        style: TextStyle(color: Colors.white,fontSize: 20, ),
                        ),
                        
                       SizedBox(height: 10),
                       
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(60)),
                  child: Image.network('https://www.nicepng.com/png/full/455-4555073_logo-facebook-clipart-facebook-clip-art-vinyl-record.png',height: 40, width: 40,fit: BoxFit.cover,),
                ),
                SizedBox(width: 20,),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(60)),
                  child: Image.network('https://media.istockphoto.com/id/1059905274/vector/google-chrome-logo-vector-illustration.jpg?s=612x612&w=0&k=20&c=UF4hgO-31F0tX0MfrL5H9slQ0yXI8uiUWsZIMZoJRao=',height: 40, width: 40,fit: BoxFit.cover,),
                ),
                SizedBox(width: 20,),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(60)),
                  child: Image.network('https://static.vecteezy.com/system/resources/previews/018/930/413/non_2x/instagram-logo-instagram-icon-transparent-free-png.png',height: 40, width: 40,fit: BoxFit.cover,),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}