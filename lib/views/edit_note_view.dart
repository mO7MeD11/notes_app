import 'package:app/models/note_model.dart';
import 'package:app/widgets/custom_Container.dart';
import 'package:app/widgets/custom_app_par.dart';
import 'package:app/widgets/custom_text_form_field.dart';
import 'package:app/widgets/edit_notes_view_body.dart';
import 'package:flutter/material.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return EditNotesViewBody(note: note,);
  }
}
