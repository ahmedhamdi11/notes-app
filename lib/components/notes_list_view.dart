import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_notes/components/note_item.dart';
import 'package:my_notes/cubit/get_notes_cubit/get_notes_cubit.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetNotesCubit, GetNotesState>(
      builder: (context, state) {
        return ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: BlocProvider.of<GetNotesCubit>(context).notes!.length,
            itemBuilder: (context, index) {
              return NoteItem(
                note: BlocProvider.of<GetNotesCubit>(context).notes![index],
              );
            });
      },
    );
  }
}
