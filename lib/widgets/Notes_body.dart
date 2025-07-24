import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:todoapp/widgets/Custom_note_app_bar.dart';
import 'package:todoapp/widgets/ItemsListView.dart';

class NotesBody extends StatefulWidget {
  const NotesBody({super.key});

  @override
  State<NotesBody> createState() => _NotesBodyState();
}

class _NotesBodyState extends State<NotesBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          SizedBox(height: 15),
          CustomNoteAppBar(icon: Icons.search, title: "Notes"),
          Expanded(child: ItemsListView()),
        ],
      ),
    );
  }
}
