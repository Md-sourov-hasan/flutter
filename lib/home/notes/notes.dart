import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NotesView extends StatelessWidget{
const NotesView ({super.key});

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        centerTitle: false,
        title: Text('Notes'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
        ],
      ),
      body: ,

    );
  }
}