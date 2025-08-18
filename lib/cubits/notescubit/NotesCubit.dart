import 'package:app/const.dart';
import 'package:app/cubits/add_note/add_note_state.dart';
import 'package:app/cubits/notescubit/NotesState.dart';
import 'package:app/models/note_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

class Notescubit extends Cubit {
  Notescubit() : super(Notesstate);

  getallnotes() async {
    emit(NoteStateLoading());
    try {
      var notebox = Hive.box<NoteModel>(Knotesbox);
      emit(NoteStateSuccess(notebox.values.toList()));
    } on Exception catch (e) {
      emit(NoteStateFailure(error: 'there was an error ${e.toString()}'));
    }
  }
}
