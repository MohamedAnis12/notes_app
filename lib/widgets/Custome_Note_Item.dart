import 'package:flutter/material.dart';

class CustomeNoteItem extends StatelessWidget {
  const CustomeNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 8, top: 8, bottom: 8),
      decoration: BoxDecoration(
        color: Colors.orangeAccent,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            contentPadding: EdgeInsets.all(0),
            title: Text(
              'Flutter tip',
              style: TextStyle(fontSize: 30, color: Colors.black),
            ),
            subtitle: Text(
              'hello my name is mohamed',
              style: TextStyle(
                fontSize: 24,
                color: Colors.black.withAlpha(100),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete, color: Colors.black, size: 32),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Text(
              "May,20,2025",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black.withAlpha(100),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
