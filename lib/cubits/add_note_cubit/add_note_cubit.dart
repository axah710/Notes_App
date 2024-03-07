import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_states.dart';
import 'package:notes_app/helper/constants.dart';
import 'package:notes_app/models/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Color selectedColor = const Color(0xffE0F2E9);
  // Default Color With Zero Index
  addNote(NoteModel note) async {
    note.color = selectedColor.value;
    // Assign The Selected Color To The Note Model
    emit(AddNoteLoading());
    try {
      var noteBox = Hive.box<NoteModel>(kNoteBox);
      await noteBox.add(note);
      emit(AddNoteSucess());
    } catch (e) {
      emit(
        AddNoteFailure(e.toString()),
      );
    }
  }
}
