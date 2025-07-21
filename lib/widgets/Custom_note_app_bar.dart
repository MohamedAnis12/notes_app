import 'package:flutter/material.dart';
import 'package:todoapp/widgets/Custom_sersh_icon.dart';

class CustomNoteAppBar extends StatelessWidget {
  const CustomNoteAppBar({super.key, required this.icon, required this.title});
final IconData icon;
final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      child: Row(
        children: [
          Text(title, style: TextStyle(color: Colors.white, fontSize: 30)),
          Spacer(),
          CustomSershIcon(icon: icon,),
        ],
      ),
    );
  }
}
