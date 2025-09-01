import 'package:flutter/material.dart';
import 'package:first_app/models/note_model.dart'; // Make sure to import this

class CustomNotesTile extends StatelessWidget {
  final NoteModel note;

  const CustomNotesTile({required this.note, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color(0xFFF5F5F5),
        borderRadius: BorderRadius.circular(11),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            note.title,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 5),
          Text(
            note.description,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Color.fromARGB(246, 63, 61, 61),
            ),
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'created at: ${note.createdAt.toString().split(" ").first}',
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
              Icon(
                Icons.delete,
                size: 18,
                color: Color.fromARGB(255, 158, 151, 151),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
