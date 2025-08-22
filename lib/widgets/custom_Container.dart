import 'package:app/const.dart';
import 'package:app/cubits/add_note/add_note_cubit.dart';
import 'package:app/cubits/notescubit/NotesCubit.dart';
import 'package:app/models/note_model.dart';
import 'package:app/views/edit_note_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.notes});

  final NoteModel notes;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 12),

        GestureDetector(
          onTap: () {
            Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (context) => EditNoteView()));
          },
          child: Container(
            padding: EdgeInsets.only(top: 24, bottom: 26),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(notes.color),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      notes.title,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Text(
                        notes.subtitle,
                        style: TextStyle(color: Colors.black, fontSize: 22),
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        notes.delete();
                        BlocProvider.of<Notescubit>(context).getallnotes();
                      },
                      icon: Icon(Icons.delete, size: 30, color: Colors.black),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8, top: 8),
                        child: Text(
                          notes.date,
                          style: TextStyle(color: Colors.black, fontSize: 22),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
