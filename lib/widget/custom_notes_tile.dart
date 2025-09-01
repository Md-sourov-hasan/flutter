import 'package:first_app/controller/notes_controller.dart';
import 'package:flutter/material.dart';
import 'package:first_app/models/note_model.dart';
import 'package:get/get.dart';

class CustomNotesTile extends StatelessWidget {
  final NoteModel note;
  final int index;

  const CustomNotesTile({
    required this.note,
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<NotesController>();

    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color(0xFFF5F5F5),
        borderRadius: BorderRadius.circular(11),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            note.title,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            note.description,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Color.fromARGB(246, 63, 61, 61),
            ),
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Created at: ${note.createdAt.toString().split(" ").first}',
                style: const TextStyle(fontSize: 10),
              ),
              if (note.updatedAt != null)
                Text(
                  'Updated at: ${note.updatedAt!.toString().split(" ").first}',
                  style: const TextStyle(
                    fontSize: 10,
                    color: Color.fromARGB(246, 63, 61, 61),
                  ),
                ),
              IconButton(
                onPressed: () {
                  controller.delete(index); // ✅ সঠিকভাবে delete ফাংশন কল
                },
                icon: const Icon(
                  Icons.delete,
                  size: 18,
                  color: Color.fromARGB(246, 63, 61, 61),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
