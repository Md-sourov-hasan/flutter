import 'package:first_app/models/note_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotesController extends GetxController {
  // Reactive notes list using RxList
  final RxList<NoteModel> notes = <NoteModel>[].obs;

  // Text controllers for input fields
  final TextEditingController titleController = TextEditingController();
  final TextEditingController discriptionController = TextEditingController();

  // Create a new note
  void createNote() {
    final title = titleController.text.trim();
    final description = discriptionController.text.trim();

    if (title.isNotEmpty || description.isNotEmpty) {
      notes.add(
        NoteModel(
          title: title,
          description: description,
          createdAt: DateTime.now(),
          updatedAt: null,
        ),
      );
      clearFields();
    }
  }

  // Update an existing note
  void updateNote(int index) {
    final title = titleController.text.trim();
    final description = discriptionController.text.trim();

    if (title.isNotEmpty || description.isNotEmpty) {
      final updatedNote = notes[index];
      updatedNote.title = title;
      updatedNote.description = description;
      updatedNote.updatedAt = DateTime.now();

      notes[index] = updatedNote; // re-assign to trigger update

      clearFields();
    }
  }

  // Delete a note by index
  void delete(int index) {
    notes.removeAt(index);
  }

  // Clear input fields
  void clearFields() {
    titleController.clear();
    discriptionController.clear();
  }
}
