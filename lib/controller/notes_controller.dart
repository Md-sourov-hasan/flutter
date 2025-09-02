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

    // ✅ যদি দুইটিই খালি থাকে তাহলে snackbar দেখাবে
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

    // ✅ অন্যথায় note add হবে
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

      Get.snackbar(
        "Updated",
        "Note updated successfully!",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.blueAccent,
        colorText: Colors.white,
      );
    }
  }

  // Delete a note by index
  void delete(int index) {
    notes.removeAt(index);

    // ✅ delete করার পর snackbar দেখাবে
    Get.snackbar(
      "Deleted",
      "Note deleted successfully!",
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.orange,
      colorText: Colors.white,
    );
    storeData();
  }

void storeData() async {
  var prefs = await SharedPreferences.getInstance();

  var notesListMap = notes.map((note) {
    return {
      'title': note.title,
      'description': note.description,
      'created_at': note.createdAt.toString(),
      'updated_at': note.updatedAt.toString(),
    };
  }).toList();

  var notesListString = jsonEncode(notesListMap);

  prefs.setString('notes', notesListString);
}

void loadNotes() async{
  var prefs= await SharedPreferences.getInstance();

  var notesListStrin=prefs.getString('notes');
  if(notesListStrin!=null){
    var notesListMap=jsonDecode(notesListStrin) as List;
    var notesListModel=notesListMap.map((notes){

      return NoteModel(
        title: notes['title'],
         description: notes['descrption'],
          createdAt: DateTime.parse(notes['created_at']),
          updatedAt: notes['updated_at']==null?null: DateTime.parse(notes['ypdated_at']),
          );
    }).toList();
  }
}
// Clear input fields
void clearFields() {
  titleController.clear();
  discriptionController.clear();
}
}