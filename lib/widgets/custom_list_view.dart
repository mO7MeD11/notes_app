import 'package:app/views/notes_view.dart';
import 'package:app/widgets/custom_Container.dart';
import 'package:app/widgets/notes_view_body.dart';
import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12, top: 12),
      child: ListView.builder(
        padding: EdgeInsets.all(0),
        itemCount: 10,
        itemBuilder: (context, indx) {
          return CustomContainer();
        },
      ),
    );
  }
}
