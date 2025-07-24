import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:todoapp/constants.dart';
import 'package:todoapp/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? notes;
  void fetchNotes() {
    final box = Hive.box<NoteModel>(kNotesBox);

    notes = box.values.toList();
    emit(NotesSuccess());
  }
}
