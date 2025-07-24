import 'package:flutter/material.dart';
import 'package:todoapp/models/note_model.dart';
import 'package:todoapp/views/Edite_Note_View.dart';

class CustomeNoteItem extends StatelessWidget {
  const CustomeNoteItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return EditeNoteView();
            },
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.only(left: 16, right: 8, top: 8, bottom: 8),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.all(0),
              title: Text(
                '${note.title}',
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
              subtitle: Text(
                '${note.supTitle}',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black.withAlpha(100),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete, color: Colors.black, size: 32),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text(
                "${note.date}",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black.withAlpha(100),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
