import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_list_view_item.dart';
import 'package:notes_app/widgets/notes_view_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Column(
        children: [
          NotesViewAppBar(
            title: 'Notes',
            icon: Icons.search,
          ),
          Expanded(
            child: ItemListView(),
          ),
        ],
      ),
    );
  }
}
