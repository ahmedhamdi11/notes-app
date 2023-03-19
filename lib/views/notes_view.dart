import 'package:flutter/material.dart';
import 'package:my_notes/components/add_note_bottom_sheet.dart';
import 'package:my_notes/components/custom_appbar.dart';
import 'package:my_notes/components/notes_list_view.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0)),
              context: context,
              builder: (context) => const AddNoteBottomSheet());
        },
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(children: const [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: 'Notes',
            icon: Icon(Icons.search),
          ),
          SizedBox(
            height: 5.0,
          ),
          Expanded(child: NotesListView()),
        ]),
      ),
    );
  }
}
