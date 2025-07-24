import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapp/cubits/add_note_cubit/add_note_cubit_cubit.dart';
import 'package:todoapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:todoapp/models/note_model.dart';
import 'package:todoapp/widgets/CustomButtom.dart';
import 'package:todoapp/widgets/Custom_TextField.dart';

class CustomForm extends StatefulWidget {
  const CustomForm({super.key});

  @override
  State<CustomForm> createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, supTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(height: 16),
          CustomTextfield(
            hint: "Title",
            onSaved: (value) {
              title = value;
            },
          ),
          SizedBox(height: 16),
          CustomTextfield(
            hint: "content",
            maxLines: 5,
            onSaved: (value) {
              supTitle = value;
            },
          ),
          SizedBox(height: 64),
          BlocBuilder<AddNoteCubit, AddNoteCubitState>(
            builder: (context, state) {
              return BlocBuilder<AddNoteCubit, AddNoteCubitState>(
                builder: (context, state) {
                  return CustomButtom(
                    isLoading: state is AddNoteLoading? true:false,
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                        var note = NoteModel(
                          date: DateTime.now().toString(),
                          title: title!,
                          supTitle: supTitle!,
                          color: Colors.blue.value,
                        );
                        BlocProvider.of<AddNoteCubit>(context).addNote(note);
                      } else {
                        autovalidateMode = AutovalidateMode.always;
                      }
                      setState(() {});
                    },
                  );
                },
              );
            },
          ),
          SizedBox(height: 24),
        ],
      ),
    );
  }
}
