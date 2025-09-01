import 'package:first_app/controller/notes_controller.dart';
import 'package:first_app/home/notes/create_or_update.dart';
import 'package:first_app/widget/custom_notes_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NotesController());

    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Color(0xFFF5F5F5),
        centerTitle: false,
        title: Text('Notes'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
        ],
      ),
      body: Obx(() {
        if (controller.notes.isEmpty) {
          return const Center(
            child: Text('No Notes'),
          );
        } else {
          return ListView.separated(
            padding: EdgeInsets.all(12),
            itemBuilder: (context, index) {
              return CustomNotesTile(note: controller.notes[index]);
            },
            separatorBuilder: (context, index) {
              return const SizedBox(height: 10);
            },
            itemCount: controller.notes.length,
          );
        }
      }),
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        onPressed: () {
          Get.to(() => CreateOrUpdateNoteView());
        },
        child: Icon(
          Icons.add,
          color: Colors.blue,
        ),
      ),
    );
  }
}
