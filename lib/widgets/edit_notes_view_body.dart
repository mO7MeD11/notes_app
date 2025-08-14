import 'package:app/widgets/custom_app_par.dart';
import 'package:app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class EditNotesViewBody extends StatelessWidget {
  const EditNotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            CustomAppPar(title: 'edit', icon: Icon(Icons.check)),
            SizedBox(height: 18),
            CustomTextFormField(hint: 'title', height: 1),
            SizedBox(height: 18),
            CustomTextFormField(hint: 'content', height: 4),
          ],
        ),
      ),
    );
  }
}
