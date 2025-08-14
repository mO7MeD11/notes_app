import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  const Custombutton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: FilledButton(onPressed: () {}, child: Text('add')),
    );
  }
}
