import 'package:app/widgets/custom_text_form_field.dart';
import 'package:app/widgets/custombutton.dart';
import 'package:flutter/cupertino.dart';

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
          Custombutton(
            ontap: () {
              if (formKye.currentState!.validate()) {
                formKye.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}
