import 'package:first_app/models/note_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotesController extends GetxController {
  RxList<NoteModel> notes = <NoteModel>[].obs;

  TextEditingController titleController = TextEditingController();
  TextEditingController discriptionController = TextEditingController();

  void createNote() {
    if (titleController.text.isEmpty || discriptionController.text.isEmpty) {
      Get.snackbar(
        'Error',
        'All fields are required',
       
      );
      return;
    }

    notes.add(
      NoteModel(
        title: titleController.text,
        description: discriptionController.text,
        createdAt: DateTime.now(),
      ),
    );

    update();

    titleController.clear();
    discriptionController.clear();

    Get.back();
  }

  void delete(int index) {
    notes.removeAt(index); // ✅ index অনুযায়ী remove করছি
    update(); // ✅ UI রিফ্রেশ হবে

    Get.snackbar(
      'Success',
      'The note has been deleted',
     
    );
  }
}
