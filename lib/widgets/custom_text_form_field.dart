import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hint,
    required this.height,
  });
  final String hint;
  final double height;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: BuildBorder(),
        enabledBorder: BuildBorder(),
        focusedBorder: BuildBorder(),
        hintText: hint,
        contentPadding: EdgeInsets.only(top: height, bottom: height, left: 12),
      ),
    );
  }

  OutlineInputBorder BuildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Colors.white),
    );
  }
}
