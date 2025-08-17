import 'package:app/const.dart';
import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  const Custombutton({super.key, required this.ontap, this.isloding = false});
  final void Function()? ontap;
  final bool isloding;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: FilledButton(
        onPressed: ontap,
        style: FilledButton.styleFrom(backgroundColor: KPcolor),
        child: isloding ? CircularProgressIndicator() : Text('add'),
      ),
    );
  }
}
