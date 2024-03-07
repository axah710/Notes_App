import 'package:flutter/material.dart';
import 'package:notes_app/helper/constants.dart';
import 'package:notes_app/widgets/note_modal_bottom_sheet.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static String id = kNotesViewId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(
          bottom: 12,
          right: 8,
        ),
        child: FloatingActionButton(
          splashColor: kPrimaryColor,
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              context: context,
              builder: (context) {
                return const NoteModalBottomSheet();
              },
            );
          },
          backgroundColor: kPrimaryColor,
          child: const Icon(
            Icons.add,
          ),
        ),
      ),
      body: const NotesViewBody(),
    );
  }
}
