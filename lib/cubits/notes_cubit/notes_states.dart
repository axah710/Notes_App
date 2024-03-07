
abstract class NotesState {}

class NotesInitial extends NotesState {}

class NotesSucess extends NotesState {
  NotesSucess();
}

// class NotesLoading extends NotesState {}

// class NotesSucess extends NotesState {
//   final List<NoteModel> notes;

//   NotesSucess(this.notes);
// }

// class NotesFailure extends NotesState {
//   final String errorMessage;

//   NotesFailure(this.errorMessage);
// }
// why did we remove them ?
// Because We Don't use them.