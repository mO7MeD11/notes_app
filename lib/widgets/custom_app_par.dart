import 'package:app/widgets/custom_icon.dart';
import 'package:flutter/material.dart';

class CustomAppPar extends StatelessWidget {
  const CustomAppPar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60),
      child: Row(
        children: [
          Text('notes app ', style: TextStyle(fontSize: 28)),
          Spacer(),
          CustomIcon(),
        ],
      ),
    );
  }
}
