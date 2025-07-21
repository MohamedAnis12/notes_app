import 'package:flutter/material.dart';
import 'package:todoapp/widgets/CustomButtom.dart';
import 'package:todoapp/widgets/Custom_TextField.dart';

class AddNoteBottomSheet extends StatefulWidget {
  const AddNoteBottomSheet({super.key});

  @override
  State<AddNoteBottomSheet> createState() => _AddNoteBottomSheetState();
}

class _AddNoteBottomSheetState extends State<AddNoteBottomSheet> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, supTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SingleChildScrollView(
        child: Form(
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
              CustomButtom(
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                  }
                  setState(() {});
                },
              ),
              SizedBox(height: 256),
            ],
          ),
        ),
      ),
    );
  }
}
