import 'package:flutter/material.dart';
import 'package:todoapp/widgets/Custom_sersh_icon.dart';

class CustomNoteAppBar extends StatelessWidget {
  const CustomNoteAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      child: Row(
        children: [
          Text("Notes", style: TextStyle(color: Colors.white, fontSize: 30)),
          Spacer(),
          CustomSershIcon(),
        ],
      ),
    );
  }
}
