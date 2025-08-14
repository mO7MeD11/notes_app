import 'package:app/const.dart';
import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  const Custombutton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: FilledButton(
        onPressed: () {},
        style: FilledButton.styleFrom(backgroundColor: KPcolor),
        child: Text('add'),
      ),
    );
  }
}
