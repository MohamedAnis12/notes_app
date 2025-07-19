import 'package:flutter/material.dart';
import 'package:todoapp/widgets/Custom_TextField.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(children: [SizedBox(height: 16), CustomTextfield()]),
      ),
    );
  }
}
