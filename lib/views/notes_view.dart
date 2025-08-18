import 'package:app/cubits/notescubit/NotesCubit.dart';
import 'package:app/widgets/Custom_Add_Note.dart';
import 'package:app/widgets/custom_list_view.dart';
import 'package:app/widgets/notes_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Notescubit (),
      child: Scaffold(
        body: NotesViewBody(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              context: context,
              builder: (context) {
                return CustomAddNote();
              },
            );
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
