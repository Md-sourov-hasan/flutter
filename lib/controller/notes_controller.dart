import 'dart:convert';
import 'package:first_app/models/note_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NotesController extends GetxController {
  // Reactive notes list using RxList
  final RxList<NoteModel> notes = <NoteModel>[].obs;

  // Text controllers for input fields
  final TextEditingController titleController = TextEditingController();
  final TextEditingController discriptionController = TextEditingController();

  void createNote() {
    final title = titleController.text.trim();
    final description = discriptionController.text.trim();

    if (title.isEmpty || description.isEmpty) {
      Get.snackbar(
        "Error",
        "Title বা Description এর মধ্যে অন্তত একটি লিখতে হবে!",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.redAccent,
        colorText: Colors.white,
      );
      return;
    }

    notes.add(
      NoteModel(
        title: title,
        description: description,
        createdAt: DateTime.now(),
        updatedAt: null,
      ),
    );
    storeData();
    clearFields();

    Get.snackbar(
      "Success",
      "Note created successfully!",
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.green,
      colorText: Colors.white,
    );
  }

  void updateNote(int index) {
    final title = titleController.text.trim();
    final description = discriptionController.text.trim();

    if (title.isNotEmpty || description.isNotEmpty) {
      final updatedNote = notes[index];
      updatedNote.title = title;
      updatedNote.description = description;
      updatedNote.updatedAt = DateTime.now();

      notes[index] = updatedNote; // re-assign to trigger update
      storeData(); // ✅ Update এর পর save করতে হবে

      clearFields();

      Get.snackbar(
        "Updated",
        "Note updated successfully!",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.blueAccent,
        colorText: Colors.white,
      );
    }
  }

  void delete(int index) {
    notes.removeAt(index);
    storeData(); // ✅ Delete এর পরেও save করতে হবে

    Get.snackbar(
      "Deleted",
      "Note deleted successfully!",
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.orange,
      colorText: Colors.white,
    );
  }

  // Save notes in SharedPreferences
  void storeData() async {
    var prefs = await SharedPreferences.getInstance();

    var notesListMap = notes.map((note) {
      return {
        'title': note.title,
        'description': note.description,
        'created_at': note.createdAt.toString(),
        'updated_at': note.updatedAt?.toString(), // ✅ null-safe
      };
    }).toList();

    var notesListString = jsonEncode(notesListMap);
    prefs.setString('notes', notesListString);
  }

  // Load notes from SharedPreferences
  void loadNotes() async {
    var prefs = await SharedPreferences.getInstance();

    var notesListString = prefs.getString('notes');
    if (notesListString != null) {
      var notesListMap = jsonDecode(notesListString) as List;
      var notesListModel = notesListMap.map((note) {
        return NoteModel(
          title: note['title'],
          description: note['description'], // ✅ spelling ঠিক করা হলো
          createdAt: DateTime.parse(note['created_at']),
          updatedAt: note['updated_at'] == null
              ? null
              : DateTime.parse(note['updated_at']),
        );
      }).toList();

      notes.assignAll(notesListModel); // ✅ পুরোনো data replace করবে
      update();
    }
  }

  @override
  void onInit() {
    super.onInit();
    loadNotes();
  }

  void clearFields() {
    titleController.clear();
    discriptionController.clear();
  }
}
