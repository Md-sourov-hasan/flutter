import 'package:first_app/controller/notes_controller.dart';
import 'package:first_app/models/note_model.dart';
import 'package:first_app/home/notes/notes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateOrUpdateNoteView extends StatefulWidget {
  final NoteModel? note;
  final int? noteIndex;

  const CreateOrUpdateNoteView({super.key, this.note, this.noteIndex});

  @override
  State<CreateOrUpdateNoteView> createState() => _CreateOrUpdateNoteViewState();
}

class _CreateOrUpdateNoteViewState extends State<CreateOrUpdateNoteView> {
  final controller = Get.find<NotesController>();

  @override
  void initState() {
    super.initState();
    if (widget.note != null) {
      controller.titleController.text = widget.note!.title;
      controller.discriptionController.text = widget.note!.description;
    } else {
      controller.clearFields();
    }
  }

  void _handleSave() {
    final title = controller.titleController.text.trim();
    final description = controller.discriptionController.text.trim();

    // ✅ Validation
    if (title.isEmpty || description.isEmpty) {
      Get.snackbar(
        "Error",
        "All text fields are required",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.redAccent,
        colorText: Colors.white,
        margin: const EdgeInsets.all(10),
        borderRadius: 10,
        icon: const Icon(Icons.error, color: Colors.white),
      );
      return;
    }

    // ✅ Create or Update Logic (No snackbar)
    if (widget.note == null) {
      controller.createNote();
    } else {
      controller.updateNote(widget.noteIndex!);
    }

    // Navigate back to NotesView
    Get.offAll(() => const NotesView());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF5F5F5),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back),
        ),
        title: Text('${widget.note == null ? "Create" : "Update"} Note'),
        actions: [
          IconButton(
            onPressed: _handleSave,
            icon: const Icon(Icons.done),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextFormField(
              controller: controller.titleController,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "Title",
                hintStyle: TextStyle(
                  color: Color.fromARGB(255, 87, 84, 84),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: TextFormField(
                controller: controller.discriptionController,
                minLines: null,
                maxLines: null,
                expands: true,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Note something down",
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 87, 84, 84),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
