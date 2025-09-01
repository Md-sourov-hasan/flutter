import 'package:first_app/controller/notes_controller.dart';
import 'package:first_app/home/notes/create_or_update.dart';
import 'package:first_app/widget/custom_notes_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/utils.dart';

class NotesView extends StatelessWidget{
const NotesView ({super.key});

@override
  Widget build(BuildContext context) {
               Get.put(NotesController());

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
          onPressed: (){
            Get.to(()=> CreateOrUpdateNoteView());
          },
        child: Icon(
          Icons.add,
          color: Colors.blue,
        ),
        
        ),

    );
  }
}