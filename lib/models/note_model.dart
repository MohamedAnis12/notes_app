import 'package:hive/hive.dart';
part 'note_model.g.dart';
@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
   String title;
  @HiveField(1)
   String supTitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
   int color;

  NoteModel(
   {required this.date, 
    required this.title,
    required this.supTitle,
    required this.color,
  });
}
