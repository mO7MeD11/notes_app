class NoteState {}

class InitialNoteState extends NoteState {}

class LoadingNoteState extends NoteState {}

class SuccessNoteState extends NoteState {}

class FailureNoteState extends NoteState {
  final String error;

  FailureNoteState({required this.error});
}
