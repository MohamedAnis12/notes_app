import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      
      decoration: InputDecoration(
        hintText: "text",
        hintStyle: TextStyle(color: Colors.white.withAlpha(100)),
        border: buildBorder(),
        enabledBorder: buildBorder(Colors.blue),
        focusedBorder: buildBorder(Colors.green)
      ),
    );
  }

  OutlineInputBorder buildBorder([Color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color:Color?? Colors.white),
      );
  }
}
