import 'package:app/const.dart';
import 'package:app/cubits/add_note/add_note_cubit.dart';
import 'package:app/cubits/add_note/add_note_state.dart';
import 'package:app/models/note_model.dart';
import 'package:app/widgets/custom_text_form_field.dart';
import 'package:app/widgets/custombutton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKye = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formKye,
      child: Column(
        children: [
          SizedBox(height: 30),
          CustomTextFormField(
            hint: 'title',
            height: 1,
            onsaved: (value) {
              title = value;
            },
          ),
          SizedBox(height: 18),
          CustomTextFormField(
            hint: 'content',
            height: 4,
            onsaved: (value) {
              subtitle = value;
            },
          ),
          SizedBox(height: 30),
          ColorListView(),

          SizedBox(height: 30),
          BlocBuilder<AddNoteCubit, NoteState>(
            builder: (context, state) {
              return Custombutton(
                isloding: state is LoadingNoteState ? true : false,
                ontap: () {
                  if (formKye.currentState!.validate()) {
                    formKye.currentState!.save();
                    var notemodel = NoteModel(
                      title: title!,
                      subtitle: subtitle!,
                      date: DateFormat('dd-MM-yyyy').format(DateTime.now()),
                      color: color,
                    );
                    BlocProvider.of<AddNoteCubit>(context).addnote(notemodel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

class ColorItem extends StatelessWidget {
  const ColorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: CircleAvatar(backgroundColor: Colors.amber, radius: 30),
    );
  }
}

class ColorListView extends StatelessWidget {
  const ColorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return ColorItem();
        },
      ),
    );
  }
}
