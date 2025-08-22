import 'package:app/const.dart';
import 'package:app/cubits/add_note/add_note_state.dart';
import 'package:app/cubits/notescubit/NotesState.dart';
import 'package:app/models/note_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

class Notescubit extends Cubit<Notesstate2> {
  Notescubit() : super(NoteStateInitial());
  List<NoteModel>? note;
  getallnotes() {
    var notebox = Hive.box<NoteModel>(Knotesbox);
    note = notebox.values.toList();
    emit(NoteSuccess());
  }
}
