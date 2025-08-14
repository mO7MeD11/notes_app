import 'package:app/widgets/custom_icon.dart';
import 'package:flutter/material.dart';

class CustomAppPar extends StatelessWidget {
  const CustomAppPar({super.key, required this.title, required this.icon});

  final String title;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60),
      child: Row(
        children: [
          Text( title , style: TextStyle(fontSize: 28)),
          Spacer(),
          CustomIcon(icon: icon,),
        ],
      ),
    );
  }
}
