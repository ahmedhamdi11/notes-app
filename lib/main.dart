import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:my_notes/constants.dart';
import 'package:my_notes/models/note_model.dart';
import 'package:my_notes/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Notes',
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Pippins',
      ),
      home: const NotesView(),
    );
  }
}
