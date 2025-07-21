import 'package:flutter/material.dart';
import 'package:todoapp/widgets/Custom_note_app_bar.dart';

class EditeNoteBody extends StatelessWidget {
  const EditeNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
          children: const [
            SizedBox(height: 15),
            CustomNoteAppBar(icon: Icons.check,title: "Edite",),
          ],

      ));
  }
}