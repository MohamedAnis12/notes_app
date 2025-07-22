import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:todoapp/constants.dart';
import 'package:todoapp/models/note_model.dart';
import 'package:todoapp/views/Notes_View.dart';

void main() async{
await Hive.initFlutter();
await Hive.openBox(kNotesBox);
Hive.registerAdapter(NoteModelAdapter());

  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NotesPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
    );
  }
}
