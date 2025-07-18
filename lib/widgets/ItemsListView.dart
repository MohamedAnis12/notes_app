import 'package:flutter/material.dart';
import 'package:todoapp/widgets/Custome_Note_Item.dart';

class ItemsListView extends StatelessWidget {
  const ItemsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: const CustomeNoteItem(),
        );
      },
    );
  }
}
