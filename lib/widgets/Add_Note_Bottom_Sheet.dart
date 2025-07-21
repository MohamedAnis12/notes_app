import 'package:flutter/material.dart';
import 'package:todoapp/widgets/CustomButtom.dart';
import 'package:todoapp/widgets/Custom_TextField.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 16),
              CustomTextfield(hint: "Title"),
              SizedBox(height: 16),
              CustomTextfield(hint: "content", maxLines: 5),
              SizedBox(height: 64),
              CustomButtom(),
              SizedBox(height: 256),
            ],
          ),
        ),
      ),
    );
  }
}


