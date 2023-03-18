import 'package:flutter/material.dart';
import 'package:my_notes/views/notes_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Notes',
      theme: ThemeData(brightness: Brightness.dark),
      home: const NotesView(),
    );
  }
}
