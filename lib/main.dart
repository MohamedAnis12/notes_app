import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:intl/intl.dart';
import 'package:todoapp/constants.dart';
import 'package:todoapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:todoapp/models/note_model.dart';
import 'package:todoapp/views/Notes_View.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());

  // // حذف البيانات لو في debug mode
  // if (kDebugMode) {
  //   await Hive.deleteBoxFromDisk(kNotesBox);
  // }

  // فتح البوكس
  var box = await Hive.openBox<NoteModel>(kNotesBox);

  // ✅ طباعة عدد العناصر
  print("✅ عدد النوتات داخل Hive: ${box.length}");

  // ✅ لو فاضي، أضف نوتة تجريبية
  if (box.isEmpty) {
    final testNote = NoteModel(
      title: "Test Note",
      supTitle: "This is a test subtitle",
      date: DateFormat('MMM d, yyyy – hh:mm a').format(DateTime.now()),
      color: 0xFF42A5F5,
    );
    await box.add(testNote);
    print("✅ تم إضافة نوتة تجريبية");
  }

  // ✅ طباعة كل النوتات
  for (var note in box.values) {
    print("📝 Note: ${note.title} - ${note.supTitle} - ${note.date}");
  }

  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),

      child: MaterialApp(
        home: NotesPage(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
      ),
    );
  }
}
