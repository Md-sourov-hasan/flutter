import 'package:flutter/material.dart';

class ChatsTab extends StatelessWidget {
const ChatsTab({super.key});

@override
  Widget build(BuildContext context) {
   return Column(
      children: [
      ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage('https://static.wikia.nocookie.net/naruto/images/4/4c/Shisui_Uchiha.png/revision/latest?cb=20140418091747'),
        ),
        title: Text("md sourov",
        style: TextStyle(
          fontWeight: FontWeight.w600,
        ),
        ),
        subtitle: Text('how are yoy',
        style: TextStyle(
          color: const Color.fromARGB(255, 82, 79, 79),
        ),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text('4 : 40 pm',
            style: TextStyle(
              color:  Color(0xff008268),
              fontWeight: FontWeight.bold,
            ),
            ),
            Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                color:  Color(0xff008268),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text('2',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ),
            ),
          ],
        ),
      ),

      ],
     )
;
  }


}