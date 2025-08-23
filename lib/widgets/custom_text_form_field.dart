import 'package:app/const.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hint,
    required this.height,
    this.onsaved,   this.onChanged,
  });
  final String hint;
  final int height;

  final void Function(String?)? onsaved;
  final  Function(String)? onChanged; 
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true ) {
          return 'filled is required';
        }
        return null;
      },
      onSaved: onsaved,
      onChanged: onChanged ,
      maxLines: height,
      cursorColor: KPcolor,
      decoration: InputDecoration(
        border: BuildBorder(),
        enabledBorder: BuildBorder(),
        focusedBorder: BuildBorder(KPcolor),
        hintText: hint,
      ),
    );
  }

  OutlineInputBorder BuildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
