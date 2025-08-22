import 'package:app/cubits/add_note/add_note_cubit.dart';
import 'package:app/cubits/add_note/add_note_state.dart';
import 'package:app/cubits/notescubit/NotesCubit.dart';
import 'package:app/widgets/add_note_form.dart';
import 'package:app/widgets/custom_text_form_field.dart';
import 'package:app/widgets/custombutton.dart' show Custombutton;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class CustomAddNote extends StatelessWidget {
  const CustomAddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: BlocConsumer<AddNoteCubit, NoteState>(
            listener: (context, state) {
              if (state is FailureNoteState) {
                print(state.error);
              }

              if (state is SuccessNoteState) {
                Navigator.pop(context);
                BlocProvider.of<Notescubit>(context).getallnotes();
              }
            },
            builder: (context, state) {
              return AbsorbPointer(
                absorbing: state is LoadingNoteState ? true : false,
                child: Padding(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom,
                  ),
                  child: SingleChildScrollView(child: AddNoteForm()),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
