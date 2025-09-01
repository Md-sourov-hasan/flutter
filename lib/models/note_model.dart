class NoteModel {
  String title;
  String description;
  DateTime createdAt;
  DateTime? updatedAt;

  NoteModel({
    required this.title,
    required this.description,
    required this.createdAt,
    this.updatedAt,
  });
}
