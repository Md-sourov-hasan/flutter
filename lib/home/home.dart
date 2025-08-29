import 'package:flutter/material.dart';
class HomeView extends StatelessWidget {
  const HomeView({super.key});

@override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff008268),
        centerTitle: false,
      
        title:const Text("whatsapp",
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
       ),
      actions: [
        IconButton(onPressed: () {}, icon : Icon(Icons.camera_alt_outlined, color : Colors.white)),
        IconButton(onPressed: () {}, icon : Icon(Icons.search, color : Colors.white)),
        IconButton(onPressed: () {}, icon : Icon(Icons.more_vert, color : Colors.white)),
      
      ],
      bottom: TabBar(
        tabs: [
      Tab(
        text: "chats",
      ) ,
        Tab(
        text: "updates",
      ) 
        ],
      ),
      
      ),
      
      
      ),
    );
  }

}