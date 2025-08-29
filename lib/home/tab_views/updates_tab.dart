import 'package:flutter/material.dart';

class UpdateTab extends StatelessWidget {
const UpdateTab({super.key});

@override
  Widget build(BuildContext context) {
   return Padding(
     padding: const EdgeInsets.all(15.0),
     child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Status'),
        const SizedBox(
          height: 5,
        ),

        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage('https://static.wikia.nocookie.net/naruto/images/4/4c/Shisui_Uchiha.png/revision/latest?cb=20140418091747'),


          ),

          Container(
            height: 22,
            width: 22,
           decoration: BoxDecoration(
             color:  Color(0xff008268),
             shape:BoxShape.circle, 
           ),
           child: const Center(
            child:Icon(Icons.add,
            color:Color.fromARGB(255, 248, 248, 248),
            size: 20,
            ) ,
           ),
          )
            ],
          ),
          title: Text('my status',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          ),
          subtitle: Text('tap to add status update',
          
          ),
        ),

      ],
     ),
   );
  }


}