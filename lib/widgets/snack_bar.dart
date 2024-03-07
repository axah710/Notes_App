import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_states.dart';

void sucessSnackBar(BuildContext context) {
  final snackBar = SnackBar(
    elevation: 0,
    behavior: SnackBarBehavior.floating,
    duration: const Duration(seconds: 7),
    backgroundColor: Colors.transparent,
    content: AwesomeSnackbarContent(
      title: 'Note Added Successfully',
      contentType: ContentType.success,
      message: '',
    ),
  );
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(snackBar);
}

void failureSnackBar(AddNoteFailure state, BuildContext context) {
  final snackBar = SnackBar(
    elevation: 0,
    behavior: SnackBarBehavior.floating,
    duration: const Duration(seconds: 7),
    backgroundColor: Colors.transparent,
    content: AwesomeSnackbarContent(
      title: 'Failed To Add Note',
      message: state.errorMessage,
      contentType: ContentType.failure,
    ),
  );
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(snackBar);
}
