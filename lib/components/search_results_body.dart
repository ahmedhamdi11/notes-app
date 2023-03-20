import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_notes/components/note_item.dart';
import 'package:my_notes/cubit/get_notes_cubit/get_notes_cubit.dart';
import 'package:my_notes/models/note_model.dart';

class SearchResultsBody extends StatelessWidget {
  const SearchResultsBody({Key? key, required this.query}) : super(key: key);
  final String query;

  @override
  Widget build(BuildContext context) {
    List<NoteModel>? notesResult = query.isEmpty
        ? BlocProvider.of<GetNotesCubit>(context).notes
        : BlocProvider.of<GetNotesCubit>(context)
            .notes!
            .where(
                (e) => e.title.startsWith(query) || e.content.startsWith(query))
            .toList();
    return BlocConsumer<GetNotesCubit, GetNotesState>(
      listener: (context, state) {
        if (state is GetNotesSuccess) {
          notesResult = query.isEmpty
              ? BlocProvider.of<GetNotesCubit>(context).notes
              : BlocProvider.of<GetNotesCubit>(context)
                  .notes!
                  .where((e) =>
                      e.title.startsWith(query) || e.content.startsWith(query))
                  .toList();
        }
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 32,
              ),
              Expanded(
                  child: notesResult!.isEmpty
                      ? const Center(
                          child: Text(
                            'No Results',
                          ),
                        )
                      : ListView.builder(
                          itemCount: notesResult!.length,
                          itemBuilder: (context, index) {
                            return NoteItem(note: notesResult![index]);
                          })),
            ],
          ),
        );
      },
    );
  }
}
