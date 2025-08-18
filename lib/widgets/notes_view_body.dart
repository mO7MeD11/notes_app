import 'package:app/cubits/notescubit/NotesCubit.dart';
import 'package:app/models/note_model.dart';
import 'package:app/widgets/custom_Container.dart';
import 'package:app/widgets/custom_app_par.dart';
import 'package:app/widgets/custom_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
     BlocProvider.of<Notescubit>(context).getallnotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          CustomAppPar(title: 'Notes App', icon: Icon(Icons.search)),
          Expanded(child: CustomListView()),
        ],
      ),
    );
  }
}
