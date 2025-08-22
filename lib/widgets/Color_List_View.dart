import 'package:app/cubits/add_note/add_note_cubit.dart';
import 'package:app/widgets/Color_item.dart';
import 'package:app/widgets/add_note_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex = 0;
  List<Color> colors = [
    Color(0xff4F7CAC),
    Color(0xffC0E0DE),
    Color(0xff162521),
    Color(0xff3C474B),
    Color(0xff9EEFE5),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              BlocProvider.of<AddNoteCubit>(context).color = colors[index];
              currentIndex = index;
              setState(() {});
            },
            child: ColorItem(
              isActive: currentIndex == index,
              color: colors[index],
            ),
          );
        },
      ),
    );
  }
}
