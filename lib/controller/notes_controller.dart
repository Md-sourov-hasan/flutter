import 'package:first_app/models/note_model.dart';
import 'package:get/get.dart';

class NotesController extends GetxController{
  RxList<NoteModel> notes =<NoteModel>[].obs;
}