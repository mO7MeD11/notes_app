import 'package:app/const.dart';
import 'package:app/cubits/add_note/add_note_state.dart';
import 'package:app/models/note_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

class AddNoteCubit extends Cubit<NoteState> {
  AddNoteCubit(super.initialState);

  addnote(NoteModel note) async {
    emit(LoadingNoteState());
    try {
      var notebox = Hive.box<NoteModel>(Knotesbox);
      await notebox.add(note);
      emit(SuccessNoteState());
    } on Exception catch (e) {
      emit(FailureNoteState(error: 'there was an error ${e.toString()}'));
    }
  }
}
