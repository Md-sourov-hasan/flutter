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
        
        itemBuilder: (context, index) {
          return Text('fgfg')
        },
       separatorBuilder: (context,index){
        return const SizedBox(
          height: 10,

        );
       },
        itemCount: 5,
        
        ),

    );
  }
}