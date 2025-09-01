import 'package:first_app/models/note_model.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class NotesController extends GetxController{
  RxList<NoteModel> notes =<NoteModel>[].obs;
  TextEditingController titleController =TextEditingController();
    TextEditingController discriptionController =TextEditingController();
    void createNote(){
      notes.add(NoteModel(
        title: titleController.text,
         description: discriptionController.text, 
         createdAt:DateTime.now(),
         ),
         );
         update();
    }
}