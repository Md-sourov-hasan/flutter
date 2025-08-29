
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
        // IconButton(onPressed: () {}, icon : Icon(Icons.more_vert, color : Colors.white)),
      PopupMenuButton(itemBuilder:(context){
        return[
          PopupMenuItem(child: Text("new group")),
           PopupMenuItem(child: Text("new broadcast")),
            PopupMenuItem(child: Text("linked device")),
             PopupMenuItem(child: Text("starred mesase")),
                PopupMenuItem(child: Text("settings")),
        ];
      },
      icon: Icon(
        Icons.more_vert,
        color:Colors.white,
      ),
      )
      ],
      bottom: TabBar(
        labelColor: Colors.white,
        labelStyle: TextStyle(
          fontWeight: FontWeight.bold
        ),
        unselectedLabelColor: const Color.fromARGB(255, 218, 212, 212),
        indicatorColor: Colors.white,
        tabs: [
           Tab(
        icon: Icon(Icons.group),
      ) ,
      
      Tab(
        text: "chats",
      ) ,
        Tab(
        text: "updates",
      ) ,
       Tab(
        text: "calls",
      ) 
      
        ],
      ),
      
      ),
      
     body: Column(
      children: [
      ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage('https://static.wikia.nocookie.net/naruto/images/4/4c/Shisui_Uchiha.png/revision/latest?cb=20140418091747'),
        ),
      ),

      ],
     ),
      
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff008268),
        onPressed: () {}, 
      child: const Icon(Icons.message,color: Colors.white,),

      
      ),
      
      ),
    );
  }

}