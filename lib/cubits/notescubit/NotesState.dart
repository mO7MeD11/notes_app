import 'package:app/models/note_model.dart';

class Notesstate {}

class NoteStateInitial extends Notesstate {}

class NoteStateLoading extends Notesstate {}

class NoteStateSuccess extends Notesstate {
  NoteStateSuccess(this.note);
  final List<NoteModel> note;
}

class NoteStateFailure extends Notesstate {
  final String error;

  NoteStateFailure({required this.error});
}
