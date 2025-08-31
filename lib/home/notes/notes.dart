import 'package:first_app/widget/custom_notes_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NotesView extends StatelessWidget{
const NotesView ({super.key});

@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf5f5f5f5f5f5f5),
      appBar: AppBar(
        backgroundColor: Color(0xFFf5f5f5f5f5f5f5),
        centerTitle: false,
        title: Text('Notes'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
        ],
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(12),
        
        itemBuilder: (context, index) {
          return CustomNotesTile();
        },
       separatorBuilder: (context,index){
        return const SizedBox(
          height: 10,

        );
       },
        itemCount: 50,
        
        ),

        floatingActionButton: FloatingActionButton(
          shape: CircleBorder(),
          onPressed: (){},
        child: Icon(
          Icons.add,
          color: Colors.blue,
        ),
        
        ),

    );
  }
}