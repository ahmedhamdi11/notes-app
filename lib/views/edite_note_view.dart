import 'package:flutter/material.dart';
import 'package:my_notes/components/custom_appbar.dart';
import 'package:my_notes/components/custom_text_field.dart';

class EditeNoteView extends StatelessWidget {
  const EditeNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(children: const [
          SizedBox(
            height: 50.0,
          ),
          CustomAppBar(
            title: 'Edit Note',
            icon: Icon(Icons.check),
          ),
          SizedBox(
            height: 50.0,
          ),
          CustomTextField(hintText: 'Title'),
          SizedBox(
            height: 12.0,
          ),
          CustomTextField(
            hintText: 'contetnt',
            maxLines: 5,
          ),
        ]),
      ),
    );
  }
}
