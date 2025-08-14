import 'package:app/widgets/custom_text_form_field.dart';
import 'package:app/widgets/custombutton.dart' show Custombutton;
import 'package:flutter/material.dart';

class CustomAddNote extends StatelessWidget {
  const CustomAddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 30),
            CustomTextFormField(hint: 'title', height: 20),
            SizedBox(height: 18),
            CustomTextFormField(hint: 'content', height: 40),
            SizedBox(height: 18),
            Custombutton(),
          ],
        ),
      ),
    );
  }
}
