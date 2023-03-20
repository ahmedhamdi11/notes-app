import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_notes/components/color_picker_item.dart';
import 'package:my_notes/cubit/add_note_cubit/add_note_cubit.dart';

class NoteColorPicker extends StatefulWidget {
  const NoteColorPicker({Key? key}) : super(key: key);

  @override
  State<NoteColorPicker> createState() => _NoteColorPickerState();
}

class _NoteColorPickerState extends State<NoteColorPicker> {
  int currentIndex = 0;
  List<Color> colorsList = const [
    Color(0xffd9e5d6),
    Color(0xffeae2b7),
    Color(0xffcbf3f0),
    Color(0xffffd670),
    Color(0xffFCCA46),
    Color(0xffe9ff70),
    Color(0xffA1C181),
    Color(0xffffd29d),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 26*2,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: colorsList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = index;
                  BlocProvider.of<AddNoteCubit>(context).color =
                      colorsList[index];
                });
              },
              child: ColorPickerItem(
                isPicked: currentIndex == index,
                color: colorsList[index],
              ));
        },
      ),
    );
  }
}
