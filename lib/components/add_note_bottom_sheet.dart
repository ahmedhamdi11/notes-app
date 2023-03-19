import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_notes/components/add_note_form.dart';
import 'package:my_notes/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:my_notes/cubit/get_notes_cubit/get_notes_cubit.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => AddNoteCubit(),
        child: Padding(
          padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
              left: 16.0,
              right: 16.0),
          child: SingleChildScrollView(
              child: BlocConsumer<AddNoteCubit, AddNoteState>(
            listener: (context, state) {
              if (state is AddNoteSuccess) {
                Navigator.pop(context);
                BlocProvider.of<GetNotesCubit>(context).getNotes();
              } else if (state is AddNoteFailure) {
                debugPrint(state.error);
              }
            },
            builder: (context, state) {
              return AbsorbPointer(
                  absorbing: state is AddNoteLoading ? true : false,
                  child: const AddNoteForm());
            },
          )),
        ));
  }
}
