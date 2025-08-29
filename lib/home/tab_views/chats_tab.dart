import 'package:flutter/material.dart';

class ChatsTab extends StatelessWidget {
 ChatsTab({super.key});

final List<Map<String, dynamic>>chats = [

  <String, dynamic>
  {
    'name': 'md sourov',
     'profile_picture':'https://static.wikia.nocookie.net/naruto/images/4/4c/Shisui_Uchiha.png/revision/latest?cb=20140418091747',
      'last_message':'how are you',
      'last_message_time':'4 :10 pm',
      'unread':0,
  },
  {
    'name': 'md shakib',
     'profile_picture':'https://static.wikitide.net/deathbattlewiki/1/10/Portrait.satorugojo.png',
      'last_message':'custom khelba',
      'last_message_time':'3 :10 pm',
      'unread':0,
  },
   {
    'name': 'md asad',
     'profile_picture':'https://static.wikia.nocookie.net/naruto/images/4/4c/Shisui_Uchiha.png/revision/latest?cb=20140418091747',
      'last_message':'joy bangla',
      'last_message_time':'2 :10 pm',
      'unread':4,
  },
   {
    'name': 'md josim',
     'profile_picture':'https://static.wikitide.net/deathbattlewiki/1/10/Portrait.satorugojo.png',
      'last_message':'custom harba',
      'last_message_time':'1 :10 pm',
      'unread':1,
  },


];


@override
Widget build(BuildContext context) {
  return ListView.builder(
    itemCount: chats.length,
    itemBuilder: (context, index) {
    var  data =chats[index];
      return ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(data['profile_picture']),
        ),
        title: Text(data["name"],
        style: TextStyle(
          fontWeight: FontWeight.w600,
        ),
        ),
        subtitle: Text(data['last_message'],
        style: TextStyle(
          color: const Color.fromARGB(255, 82, 79, 79),
        ),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(data['last_message_time'],
            style: TextStyle(
              color:  Color(0xff008268),
              fontWeight: FontWeight.bold,
            ),
            ),
         data['unread']== 0 ? SizedBox() :   Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                color:  Color(0xff008268),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(data['unread'].toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ),
            ),
          ],
        ),
      );


    },
  );
}
}