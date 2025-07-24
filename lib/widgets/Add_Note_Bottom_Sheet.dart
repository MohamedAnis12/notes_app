import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapp/cubits/add_note_cubit/add_note_cubit_cubit.dart';
import 'package:todoapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:todoapp/widgets/CustomForm.dart';

class AddNoteBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteCubitState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {
            print("faidl ${state.errorMessage}");
          }
          if (state is AddNoteSuccess) {
            BlocProvider.of<NotesCubit>(context).fetchNotes();
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: State is AddNoteLoading ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: SingleChildScrollView(child: CustomForm()),
            ),
          );
        },
      ),
    );
  }
}
