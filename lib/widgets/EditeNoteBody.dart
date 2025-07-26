import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:todoapp/models/note_model.dart';
import 'package:todoapp/widgets/Custom_TextField.dart';
import 'package:todoapp/widgets/Custom_note_app_bar.dart';

class EditeNoteBody extends StatefulWidget {
  const EditeNoteBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditeNoteBody> createState() => _EditeNoteBodyState();
}

class _EditeNoteBodyState extends State<EditeNoteBody> {
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const SizedBox(height: 15),
          CustomNoteAppBar(
            onTap: () {
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchNotes();
              Navigator.pop(context);
            },
            icon: Icons.check,
            title: "Edite",
          ),
          const SizedBox(height: 20),

          CustomTextfield(
            onChanged: (valu) {
              widget.note.title = valu;
            },
            hint: widget.note.title,
          ),
          const SizedBox(height: 16),
          CustomTextfield(
            hint: widget.note.supTitle,
            maxLines: 5,
            onChanged: (valu) {
              widget.note.supTitle = valu;
            },
          ),
        ],
      ),
    );
  }
}
