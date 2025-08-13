import 'package:app/widgets/custom_Container.dart';
import 'package:app/widgets/custom_app_par.dart';
import 'package:app/widgets/custom_list_view.dart';
import 'package:flutter/material.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override 
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          CustomAppPar(),
          Expanded(child: CustomListView()),
        ],
      ),
    );
  }
}
