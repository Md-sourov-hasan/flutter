class NoteModel {
  final String title;
  final String description;
  final DateTime createdAt;  // <-- এখানে DateTime ব্যবহার করো
  final DateTime? updatedAt;

  NoteModel({
    required this.title,
    required this.description,
    required this.createdAt,
    this.updatedAt,
  });
}
