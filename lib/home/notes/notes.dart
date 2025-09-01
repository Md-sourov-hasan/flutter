import 'package:first_app/controller/notes_controller.dart';
import 'package:first_app/widget/custom_notes_tile.dart';
import 'package:first_app/home/notes/create_or_update.dart';  // <-- এটা লাগবে
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<NotesController>();

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF5F5F5),
        title: const Text('Notes'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: Obx(() {
        if (controller.notes.isEmpty) {
          return const Center(child: Text('No Notes'));
        } else {
          return ListView.separated(
            padding: const EdgeInsets.all(12),
            itemCount: controller.notes.length,
            separatorBuilder: (_, __) => const SizedBox(height: 10),
            itemBuilder: (context, index) {
              return CustomNotesTile(
                note: controller.notes[index],
                index: index,
              );
            },
          );
        }
      }),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: () {
          Get.to(() => const CreateOrUpdateNoteView());
        },
        child: const Icon(Icons.add, color: Colors.blue),
      ),
    );
  }
}

