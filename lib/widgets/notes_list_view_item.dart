import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_view_item.dart';

class ItemListView extends StatelessWidget {
  const ItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 16,
      ),
      child: ListView.builder(itemBuilder: (context, index) {
        return const NotesItem();
      }),
    );
  }
}
