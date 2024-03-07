import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/cubits/notes_cubit/notes_states.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/notes_view_item.dart';

class ItemListView extends StatelessWidget {
  const ItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<NotesCubit>(context).notes ?? [];

        // Acessing the notes from the cubit and store it in a new variable
        // to use it below in the counter.
        return Padding(
          padding: const EdgeInsets.only(
            bottom: 16,
          ),
          child: ListView.builder(
              itemCount: notes.length,
              itemBuilder: (context, index) {
                return NotesItem(
                  note: notes[index],
                );
              }),
        );
      },
    );
  }
}
