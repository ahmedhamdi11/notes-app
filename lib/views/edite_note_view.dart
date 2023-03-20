import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_notes/components/custom_appbar.dart';
import 'package:my_notes/components/custom_text_field.dart';
import 'package:my_notes/components/edite_note_color.dart';
import 'package:my_notes/components/note_color_picker.dart';
import 'package:my_notes/cubit/get_notes_cubit/get_notes_cubit.dart';
import 'package:my_notes/models/note_model.dart';

class EditeNoteView extends StatelessWidget {
  const EditeNoteView({super.key, required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(children: [
          const SizedBox(
            height: 50.0,
          ),
          CustomAppBar(
            title: 'Edit Note',
            icon: const Icon(Icons.check),
            onIconTap: () {
              note.save();
              BlocProvider.of<GetNotesCubit>(context).getNotes();
              Navigator.pop(context);
            },
          ),
          const SizedBox(
            height: 50.0,
          ),
          CustomTextField(
            initialValue: note.title,
            onChanged: (value) {
              note.title = value;
            },
          ),
          const SizedBox(
            height: 12.0,
          ),
          CustomTextField(
            hintText: 'content',
            initialValue: note.content,
            maxLines: 5,
            onChanged: (value) {
              note.content = value;
            },
          ),
          const SizedBox(
            height: 30,
          ),
          EditeNoteColor(note: note),
        ]),
      ),
    );
  }
}
