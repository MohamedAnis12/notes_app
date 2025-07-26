import 'package:flutter/material.dart';
import 'package:todoapp/models/note_model.dart';
import 'package:todoapp/widgets/EditeNoteBody.dart';

class EditeNoteView extends StatelessWidget {
  const EditeNoteView({super.key, required this.note });
final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: EditeNoteBody(note: note,));
  }
}


