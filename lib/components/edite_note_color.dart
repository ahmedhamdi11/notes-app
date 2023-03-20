import 'package:flutter/material.dart';
import 'package:my_notes/components/color_picker_item.dart';
import 'package:my_notes/constants.dart';
import 'package:my_notes/models/note_model.dart';

class EditeNoteColor extends StatefulWidget {
  const EditeNoteColor({Key? key, required this.note}) : super(key: key);
  final NoteModel note;

  @override
  State<EditeNoteColor> createState() => _EditeNoteColorState();
}

class _EditeNoteColorState extends State<EditeNoteColor> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = kNoteColors.indexOf(Color(widget.note.color));
    super.initState();
  }

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
                  widget.note.color = kNoteColors[index].value;
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
