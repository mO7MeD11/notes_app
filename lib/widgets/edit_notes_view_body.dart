import 'package:app/const.dart';
import 'package:app/cubits/notescubit/NotesCubit.dart';
import 'package:app/models/note_model.dart';
import 'package:app/widgets/Color_item.dart';
import 'package:app/widgets/custom_app_par.dart';
import 'package:app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditNotesViewBody extends StatefulWidget {
  const EditNotesViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNotesViewBody> createState() => _EditNotesViewBodyState();
}

class _EditNotesViewBodyState extends State<EditNotesViewBody> {
  String? title;

  String? content;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            CustomAppPar(
              title: 'edit',
              icon: Icon(Icons.check),
              ontap: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subtitle = content ?? widget.note.subtitle;
                widget.note.save();
                BlocProvider.of<Notescubit>(context).getallnotes();
                Navigator.pop(context);
              },
            ),
            SizedBox(height: 18),
            CustomTextFormField(
              hint: 'title',
              height: 1,
              onChanged: (p0) {
                title = p0;
              },
            ),
            SizedBox(height: 18),
            CustomTextFormField(
              hint: 'content',
              height: 4,
              onChanged: (p0) {
                content = p0;
              },
            ),
            SizedBox(height: 18),
            EditNoteColorList(note: widget.note),
          ],
        ),
      ),
    );
  }
}

class EditNoteColorList extends StatefulWidget {
  const EditNoteColorList({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteColorList> createState() => _EditNoteColorListState();
}

class _EditNoteColorListState extends State<EditNoteColorList> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: KColors.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentIndex = index;
              widget.note.color = KColors[index].toARGB32();
              setState(() {});
            },
            child: ColorItem(
              isActive: currentIndex == index,
              color: KColors[index],
            ),
          );
        },
      ),
    );
  }
}
