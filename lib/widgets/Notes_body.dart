import 'package:flutter/material.dart';
import 'package:todoapp/widgets/Custom_note_app_bar.dart';
import 'package:todoapp/widgets/ItemsListView.dart';

class NotesBody extends StatelessWidget {
  const NotesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children:  [
            SizedBox(height: 15),
            CustomNoteAppBar(icon: Icons.search,title: "Notes",),
            Expanded(child: ItemsListView()),
          ],
        ),
      );
  }
}