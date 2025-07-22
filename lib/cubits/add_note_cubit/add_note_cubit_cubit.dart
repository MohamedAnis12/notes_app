import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:todoapp/constants.dart';
import 'package:todoapp/models/note_model.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubit() : super(AddNoteCubitInitial());
  addNote(NoteModel note) async {
    var noteBox = Hive.box<NoteModel>(kNotesBox);
    emit(AddNoteLoading());
    try {
      await noteBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
