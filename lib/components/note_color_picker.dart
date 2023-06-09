import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_notes/components/color_picker_item.dart';
import 'package:my_notes/constants.dart';
import 'package:my_notes/cubit/add_note_cubit/add_note_cubit.dart';

class NoteColorPicker extends StatefulWidget {
  const NoteColorPicker({Key? key}) : super(key: key);

  @override
  State<NoteColorPicker> createState() => _NoteColorPickerState();
}

class _NoteColorPickerState extends State<NoteColorPicker> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: kNoteColors.length,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = index;
                  BlocProvider.of<AddNoteCubit>(context).color =
                      kNoteColors[index];
                });
              },
              child: ColorPickerItem(
                isPicked: currentIndex == index,
                color: kNoteColors[index],
              ));
        },
      ),
    );
  }
}
