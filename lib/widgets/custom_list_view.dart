import 'package:app/cubits/notescubit/NotesCubit.dart';
import 'package:app/cubits/notescubit/NotesState.dart';
import 'package:app/models/note_model.dart';
import 'package:app/views/edit_note_view.dart';
import 'package:app/views/notes_view.dart';
import 'package:app/widgets/custom_Container.dart';
import 'package:app/widgets/notes_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Notescubit, Notesstate2>(
      builder: (context, state) {
        List<NoteModel> note = BlocProvider.of<Notescubit>(context).note ?? [];
        return Padding(
          padding: const EdgeInsets.only(bottom: 12, top: 12),
          child: ListView.builder(
            padding: EdgeInsets.all(0),
            itemCount: note.length,
            itemBuilder: (context, indx) {
              return CustomContainer(notes: note[indx]);
            },
          ),
        );
      },
    );
  }
}
