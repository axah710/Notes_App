import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/edit_note_colors_list_builder.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_text_field.dart';
import 'package:notes_app/widgets/notes_view_app_bar.dart';

class EditViewBody extends StatefulWidget {
  const EditViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditViewBody> createState() => _EditViewBodyState();
}

class _EditViewBodyState extends State<EditViewBody> {
  String? editedTitle, editedContent;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Column(
        children: [
          NotesViewAppBar(
            onPressed: () {
              widget.note.title = editedTitle ?? widget.note.title;
              widget.note.content = editedContent ?? widget.note.content;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            title: 'Edit Note',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 33,
          ),
          CustomTextFormField(
            onChanged: (value) {
              editedTitle = value;
            },
            hint: widget.note.title,
          ),
          const SizedBox(
            height: 24,
          ),
          CustomTextFormField(
            onChanged: (value) {
              editedContent = value;
            },
            hint: widget.note.content,
            maxLines: 5,
          ),
          const SizedBox(
            height: 12,
          ),
          EditColorsListBuilder(
            note: widget.note,
          ),
        ],
      ),
    );
  }
}
