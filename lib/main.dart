import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:my_notes/bloc_observer.dart';
import 'package:my_notes/constants.dart';
import 'package:my_notes/cubit/get_notes_cubit/get_notes_cubit.dart';
import 'package:my_notes/models/note_model.dart';
import 'package:my_notes/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetNotesCubit()..getNotes(),
      child: MaterialApp(
        title: 'My Notes',
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'Pippins',
        ),
        home: const NotesView(),
      ),
    );
  }
}
